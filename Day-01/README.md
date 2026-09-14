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
6. PROC Step

PROC stands for procedure.

PROC steps perform specific operations on SAS datasets, such as displaying, summarizing, sorting, or analyzing data.

Example:

proc print data=dm_raw;
run;
7. Variables

Variables are columns in a SAS dataset.

Examples:

SUBJID
AGE
SEX
RACE
8. Observations

Observations are rows containing information about individual records.

For example:

SUBJ001  34  M  ASIAN

represents one observation.

9. Numeric and Character Variables

Numeric variables contain numbers.

Example:

AGE = 34

Character variables contain text.

Example:

SEX = M
RACE = ASIAN

Character variables are represented using $ when reading data with an INPUT statement.

Example:

input SUBJID $ AGE SEX $ RACE $;
10. SAS Statements

SAS statements normally end with a semicolon:

data dm_raw;
11. SAS Steps

A DATA or PROC step is commonly terminated with:

run;
Practical Exercise

A basic synthetic demographic dataset was created containing:

SUBJID
AGE
SEX
RACE
COUNTRY
SITE

The dataset was created using the DATA step and displayed using PROC PRINT.

Learning Outcome

By the end of Day 01, I understood the basic structure of SAS programming, SAS datasets, variables, observations, DATA steps, PROC steps, and the high-level role of SAS in clinical data processing.

Data Privacy

All data used in this repository are synthetic and created for educational purposes.

No patient data, confidential company information, proprietary documents, or real clinical trial data are included.
