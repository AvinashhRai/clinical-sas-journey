# Day 01 — Clinical SAS Fundamentals

## Objective

Understand the difference between Base SAS and Clinical SAS and learn the fundamental structure of SAS programming and clinical trial data.

## Topics Covered

- Base SAS
- Clinical SAS
- DATA step
- PROC step
- SAS observations and variables
- Character and numeric variables
- Basic clinical data structure
- Clinical trial data flow
- RAW → SDTM → ADaM → TLF

## Key Concepts

### Base SAS

Base SAS is used to create, modify, manipulate, analyze, and report data using SAS programming.

### Clinical SAS

Clinical SAS applies SAS programming to clinical trial data and supports the transformation, validation, analysis, and reporting of clinical data.

A simplified clinical data workflow is:

RAW → SDTM → ADaM → TLF → CSR

### SAS Dataset

A SAS dataset consists of:

- Observations — rows
- Variables — columns

Example:

| SUBJID | AGE | SEX | RACE |
|--------|-----|-----|------|
| SUBJ001 | 34 | M | ASIAN |
| SUBJ002 | 42 | F | WHITE |

### Character Variables

Character variables contain text values and are generally defined using `$` in an INPUT statement.

Example:

```sas
input SUBJID $ AGE SEX $ RACE $;
