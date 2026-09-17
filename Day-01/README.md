# Day 01 — Clinical SAS Fundamentals

## Status
Completed

## What I studied

- What SAS is and what Base SAS means
- Clinical SAS and how it is used in clinical trials
- Difference between a SAS program and a SAS dataset
- SAS datasets: observations (rows) and variables (columns)
- DATA step and PROC step
- DATA step creates/reads/transforms data
- PROC step is used for specific procedures
- DATALINES for entering inline data
- INPUT statement
- Character vs numeric variables
- `$` in INPUT for character variables
- `RUN;` to end a step
- Basic SAS dataset structure using SUBJID, AGE, SEX, RACE, COUNTRY and SITE
- PROC PRINT
- PROC CONTENTS
- PROC FREQ
- PROC MEANS

## Clinical trial data concepts I learned

Basic flow:

Source / Subject / Site → CRF/eCRF → EDC → cleaned/controlled clinical data → SAS programming → SDTM → ADaM → TLFs → reporting

- CRF = Case Report Form
- eCRF = electronic Case Report Form
- EDC = Electronic Data Capture
- SDTM = Study Data Tabulation Model
- ADaM = Analysis Data Model
- TLF = Tables, Listings and Figures

I also learned that SDTM is for standardized clinical trial tabulation data, while ADaM is used for analysis-ready data.

## Important thing I learned

A SAS program is the instructions/code. A SAS dataset is the structured data produced or processed by those instructions.

A clean SAS Log does not automatically mean the clinical data or programming logic is correct. A program can run without an ERROR and still produce the wrong result.

## Practice

Created synthetic demographic datasets and used:

- PROC PRINT to view observations
- PROC CONTENTS to inspect dataset structure/metadata
- PROC FREQ to check categorical values
- PROC MEANS to check numeric summary statistics

## Questions / clarifications from Day 1

- What an observation and variable mean in SAS
- Why `$` is used for character variables
- DATA vs PROC
- SAS dataset vs SAS program
- SDTM vs ADaM
- Why validation is still required even when the Log is clean
- How to investigate when the number of subjects/observations is not what was expected

## Assessment

- Theory quiz: 89/100
- Practical: 95/100

All examples are synthetic educational data.
