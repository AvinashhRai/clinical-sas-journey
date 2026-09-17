# Day 01 — Clinical SAS Fundamentals

## Status
**Completed**

## Topics Studied
- SAS, Base SAS and Clinical SAS
- SAS datasets: observations (rows) and variables (columns)
- DATA step and PROC step
- INPUT, DATALINES and RUN
- Numeric vs character variables
- $ for character variables in INPUT
- SAS statements vs SAS steps
- PROC PRINT, PROC CONTENTS, PROC FREQ and PROC MEANS
- RAW → SDTM → ADaM → TLFs → CSR
- Basic validation/debugging mindset
- Difference between a SAS program and a SAS dataset

## Core Notes
A SAS dataset is structured data. A SAS program contains instructions for processing that data.

DATA creates or modifies datasets. PROC invokes a specific SAS procedure.

Character values require appropriate character handling; $ in INPUT identifies a character variable.

A clean SAS log does not prove clinical data are correct. Logical/data-quality errors can execute without SAS errors, so output and validation checks are required.

## Practice Sets Completed
- Created a synthetic demographic dataset with SUBJID, AGE, SEX, RACE, COUNTRY and SITE.
- Reviewed the dataset using PROC PRINT.
- Inspected metadata using PROC CONTENTS.
- Generated categorical frequencies using PROC FREQ.
- Generated descriptive statistics using PROC MEANS.

## Questions Answered During Practice
**Q: What is a SAS dataset?**  
A: A structured collection of observations and variables. A dataset is data; a program is instructions.

**Q: What is an observation?**  
A: One row in a SAS dataset; its meaning depends on the dataset structure.

**Q: What is a variable?**  
A: A column/attribute in a SAS dataset.

**Q: What does $ mean in INPUT?**  
A: It identifies a character variable.

**Q: What is DATA vs PROC?**  
A: DATA creates/modifies datasets; PROC invokes procedures for specific operations.

**Q: Does a clean log prove correctness?**  
A: No. Clinical data must also be checked for logical and data-quality problems.

**Q: What are SDTM and ADaM?**  
A: SDTM provides standardized clinical trial tabulation structures; ADaM provides analysis-ready data structures.

## Practical Code
- day01_basics.sas
- day01_practice_sets.sas

## Assessment
- Theory quiz: 89/100
- Practical: 95/100
- Overall learning assessment: approximately 86/100

## Data Privacy
All examples are synthetic educational data only.