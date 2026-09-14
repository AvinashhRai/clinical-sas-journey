/*===========================================================
Program      : Day 02 - SAS Program Structure and Libraries
Author       : Avinash Rai
Purpose      : Complete practice of statements, steps, WORK,
               permanent libraries, LIBNAME, RAW and SDTM
Repository   : clinical-sas-journey
===========================================================*/

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

proc contents data=work.dm_work;
run;

proc print data=work.dm_work;
run;

libname RAW  '/home/u64422038/SAS Training/RAW';
libname SDTM '/home/u64422038/SAS Training/SDTM';
libname ADAM '/home/u64422038/SAS Training/ADaM';
libname TLF  '/home/u64422038/SAS Training/TLF';

data RAW.dm_raw;
    set work.dm_work;
run;

proc print data=RAW.dm_raw;
run;

proc contents data=RAW.dm_raw;
run;

/* Educational RAW -> SDTM-style transfer. */
data SDTM.DM;
    set RAW.dm_raw;
run;

proc contents data=SDTM.DM;
run;

/* Concepts practiced:
   - Statements end with ;
   - DATA and PROC are SAS steps
   - RUN; commonly terminates a step
   - WORK is temporary
   - Permanent libraries use LIBNAME
   - LIBREF.DATASET identifies a dataset
   - RAW represents source/minimally processed data
   - SDTM represents the standardized clinical data layer
   - Traceability and reproducibility are important
   - Examples use synthetic data only
*/
