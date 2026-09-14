/*===========================================================
Program      : Day 03 - Data Manipulation and Logic
Author       : Avinash Rai
Purpose      : Practice IF/ELSE, WHERE, KEEP, DROP,
               counting, MERGE concepts and duplicate checks
Repository   : clinical-sas-journey
===========================================================*/

/* Synthetic source dataset */
data dm_raw;
    input SUBJID $ AGE SEX $ RACE $ COUNTRY $ SITE $;
    datalines;
SUBJ001 34 M ASIAN INDIA SITE01
SUBJ002 42 F WHITE INDIA SITE02
SUBJ003 29 M ASIAN INDIA SITE01
SUBJ004 51 F BLACK INDIA SITE03
SUBJ005 38 M WHITE INDIA SITE02
SUBJ006 45 F ASIAN INDIA SITE04
SUBJ007 31 M BLACK INDIA SITE03
SUBJ008 27 F ASIAN INDIA SITE01
SUBJ009 56 M WHITE INDIA SITE05
SUBJ010 40 F ASIAN INDIA SITE04
;
run;

/* IF/ELSE: create a derived variable */
data dm_if;
    set dm_raw;
    if AGE >= 18 then ADULT='Y';
    else ADULT='N';
run;

/* WHERE: select observations */
data dm_where;
    set dm_raw;
    where AGE >= 40;
run;

/* KEEP: retain selected variables */
data dm_keep;
    set dm_raw;
    keep SUBJID AGE SEX RACE;
run;

/* DROP: remove selected variables */
data dm_drop;
    set dm_raw;
    drop COUNTRY SITE;
run;

/* Observation count */
proc sql;
    select count(*) as N from dm_raw;
quit;

/* Frequency check */
proc freq data=dm_raw;
    tables SEX RACE SITE;
run;

/* Duplicate-key check */
proc sort data=dm_raw out=dm_sorted;
    by SUBJID;
run;

proc sort data=dm_raw out=dm_nodup nodupkey;
    by SUBJID;
run;

/* MERGE practice using a second synthetic dataset */
data dm_site;
    input SITE $ INVESTIGATOR $;
    datalines;
SITE01 DR_A
SITE02 DR_B
SITE03 DR_C
SITE04 DR_D
SITE05 DR_E
;
run;

proc sort data=dm_raw out=dm_raw_sorted;
    by SITE;
run;

proc sort data=dm_site;
    by SITE;
run;

data dm_merged;
    merge dm_raw_sorted dm_site;
    by SITE;
run;

proc print data=dm_merged;
run;

/* Debugging principle:
   Always review the SAS Log for errors, warnings and notes.
   Compare expected and actual observation counts.
   Do not remove duplicate records blindly; first determine
   whether repeated records are legitimate or erroneous.
*/
