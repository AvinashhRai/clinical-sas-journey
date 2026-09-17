/* DAY 02 PRACTICE SETS — synthetic educational data */

LIBNAME RAW '/home/u64422038/SAS Training/RAW';
LIBNAME SDTM '/home/u64422038/SAS Training/SDTM';
LIBNAME TLF '/home/u64422038/SAS Training/TLF';

/* One-level name example: normally WORK.DM */
DATA WORK.DM;
    INPUT SUBJID $ AGE SEX $;
    DATALINES;
1001 25 M
1002 31 F
;
RUN;

/* Permanent-library reference example */
DATA SDTM.DM_EXAMPLE;
    SET WORK.DM;
RUN;

PROC CONTENTS DATA=SDTM.DM_EXAMPLE;
RUN;

/* Day 2 practice focused on:
   WORK vs permanent libraries,
   LIBNAME/librefs,
   RAW vs SDTM separation,
   traceability and reproducibility.
*/