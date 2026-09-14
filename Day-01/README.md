# Day 01 — Clinical SAS Fundamentals

## Objective

Understand the fundamentals of SAS programming and the role of SAS in clinical data processing.

## Topics Covered

### 1. SAS

SAS stands for Statistical Analysis System and is used for data management, analysis, reporting, and statistical programming.

### 2. Base SAS

Base SAS provides programming capabilities for:

- Creating datasets
- Reading data
- Modifying data
- Cleaning data
- Manipulating data
- Reporting and summarizing data

### 3. Clinical SAS

Clinical SAS applies SAS programming to clinical trial data.

A simplified clinical data workflow is:

RAW Data → SDTM → ADaM → TLFs → CSR

### 4. SAS Dataset

A SAS dataset consists of:

- Observations = rows
- Variables = columns

Example:

| SUBJID | AGE | SEX | RACE |
|---|---:|---|---|
| SUBJ001 | 34 | M | ASIAN |
| SUBJ002 | 42 | F | WHITE |
| SUBJ003 | 29 | M | ASIAN |

### 5. DATA Step

The DATA step is used to create or modify SAS datasets.

Basic structure:

```sas
data dataset_name;
    /* SAS statements */
run;
```
6. PROC Step

PROC stands for Procedure.

PROC steps are used to perform specific operations on SAS datasets, such as displaying, summarizing, sorting, or analyzing data.

Example:
```
proc print data=dm_raw;
run;
```
7. Variables

Variables are columns in a SAS dataset.

Examples:
```
SUBJID
AGE
SEX
RACE
```
8. Observations

Observations are rows containing information about individual records.

For example:
```
SUBJ001  34  M  ASIAN
```
This represents one observation.

9. Numeric and Character Variables

Numeric variables contain numbers.

Example:
```
AGE = 34
```
Character variables contain text.

Examples:
```
SEX = M
RACE = ASIAN
```
When using an INPUT statement, character variables are identified with $.

Example:
```
input SUBJID $ AGE SEX $ RACE $;

Here:

SUBJID $ → Character
AGE → Numeric
SEX $ → Character
RACE $ → Character
10. SAS Statements
```
SAS statements normally end with a semicolon.

Example:
```
data dm_raw;
```
The semicolon tells SAS that the statement is complete.

11. SAS Steps

A DATA or PROC step is commonly terminated using:
```
run;
```
Example:
```
data dm_raw;
    input SUBJID $ AGE SEX $ RACE $;
    datalines;
SUBJ001 34 M ASIAN
SUBJ002 42 F WHITE
;
run;
```
Practical Exercise

A synthetic demographic dataset was created containing:
```
SUBJID
AGE
SEX
RACE
COUNTRY
SITE
```
The dataset was created using the DATA step and examined using several PROC procedures.

Procedures Used
PROC PRINT

Used to display observations from the dataset.
```
proc print data=dm_raw;
run;
PROC CONTENTS
```
Used to examine the structure and metadata of the dataset.
```
proc contents data=dm_raw;
run;
PROC FREQ
```
Used to generate frequency tables for categorical variables.
```
proc freq data=dm_raw;
    tables SEX;
run;
```
PROC MEANS
Used to calculate descriptive statistics for numeric variables.
```
proc means data=dm_raw;
    var AGE;
run;
```
Basic Clinical Data Flow

A simplified clinical programming workflow is:

RAW Clinical Data
       ↓
     SDTM
       ↓
     ADaM
       ↓
     TLFs
       ↓
     CSR
RAW

Raw data represents source data received from clinical data collection systems or other source systems.

SDTM

Study Data Tabulation Model (SDTM) provides a standardized structure for submitting clinical trial tabulation data.

ADaM

Analysis Data Model (ADaM) provides analysis-ready datasets used for statistical analysis and reporting.

TLFs

Tables, Listings, and Figures are outputs generated from analysis datasets.

CSR

Clinical Study Report contains the overall clinical study results and documentation.

Key Learning Points
SAS datasets consist of observations and variables.
The DATA step is used to create or modify datasets.
PROC steps perform specific operations on datasets.
Numeric and character variables are handled differently.
$ identifies character variables in an INPUT statement.
SAS statements generally end with ;.
DATA and PROC steps are commonly terminated with RUN;.
Clinical SAS applies SAS programming to clinical trial data.
Clinical data can progress from RAW data through SDTM and ADaM to TLFs and the CSR.
Learning Outcome

By the end of Day 01, I understood the fundamental structure of SAS programming, SAS datasets, variables, observations, DATA steps, PROC steps, and the high-level role of SAS in clinical data processing.

Data Privacy

All data used in this repository are synthetic and created for educational purposes.

No patient data, confidential company information, proprietary documents, or real clinical trial data are included.
