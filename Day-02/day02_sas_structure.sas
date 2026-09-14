/*===========================================================
Program      : Day 02 - SAS Program Structure and Libraries
Author       : Avinash Rai
Purpose      : Practice statements, steps, WORK, LIBNAME,
               and library organization using synthetic data
Repository   : clinical-sas-journey
===========================================================*/

/* Temporary WORK dataset */
data work.dm_work;
    input SUBJID $ AGE SEX $;
    datalines;
SUBJ001 34 M
SUBJ002 42 F
SUBJ003 29 M
SUBJ004 51 F
SUBJ005 38 M
;
run;

/* Examine the dataset */
proc contents data=work.dm_work;
run;

proc print data=work.dm_work;
run;

/* Example permanent library paths for SAS Studio */
/* Update these paths if your SAS Studio folder differs. */
libname RAW '/home/u64422038/SAS Training/RAW';
libname SDTM '/home/u64422038/SAS Training/SDTM';

/* Save a synthetic dataset to RAW */
data RAW.dm_raw;
    set work.dm_work;
run;

/* Read the permanent RAW dataset */
proc print data=RAW.dm_raw;
run;

/* Key principle:
   RAW = source/minimally processed area
   SDTM = standardized clinical trial data area
   Traceability should be maintained between source and output.
*/
