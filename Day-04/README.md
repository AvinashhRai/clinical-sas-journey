# Day 04 — SAS Dataset Operations & Data Manipulation

## Status
Completed

## Objective
Build practical confidence in reading, filtering, deriving, and controlling SAS datasets using a clinical-data workflow.

## Concepts Studied
- DATA step and SET statement
- Reading existing datasets from permanent libraries
- RAW → SDTM-style dataset derivation
- WHERE filtering
- IF / THEN / ELSE IF / ELSE conditional logic
- Derived variables
- KEEP and DROP
- Combining filtering, derivation, and variable selection
- Numeric missing values and comparisons such as AGE >= 18
- Logical operators: AND and OR
- SAS IN operator for checking multiple categorical values
- Practical SDTM-style subject-level transformations
- PROC PRINT for reviewing derived datasets
- Traceable transformation from RAW input to derived output
- Debugging common coding errors in practical exercises

## Practice Sets Completed

### Task 1 — Adult filtering and age grouping
Created SDTM.DM from RAW.DM.
- Filtered AGE >= 18
- Derived AGEGRP
- Kept SUBJID, AGE, SEX, RACE, AGEGRP
- Printed output

### Task 2 — Adult dataset with selected variables
Created SDTM.DM_ADULT.
- Filtered AGE >= 18
- Kept SUBJID, AGE, SEX, COUNTRY, SITE
- Practiced KEEP/DROP

### Task 3 — Age and risk classification
Created SDTM.DM_CLASSIFIED.
- Derived AGEGRP
- Derived RISK_FLAG
- Applied age-based classification

### Task 4 — Multi-variable derivation
Created SDTM.DM_FINAL.
- AGEGRP: YOUNG / ADULT / OLDER
- SEX_DESC: MALE / FEMALE
- AGE_FLAG: Y / N
- Applied KEEP for final output structure

### Task 5 — Classification with eligibility status
Created SDTM.DM_CLASSIFIED2.
- AGEGRP
- SEX_DESC
- AGE_FLAG
- ADULT_STATUS = ELIGIBLE
- Selected final variables

### Task 6 — Filtering + derivation + variable control
Created SDTM.DM_TASK6.
- AGE >= 18
- STATUS = ACTIVE
- Derived AGEGRP and SEX_DESC
- Practiced DROP and KEEP together

### Task 7 — Elderly flag derivation
Created SDTM.DM_TASK7.
- Filtered active adult subjects
- Derived AGEGRP
- Derived ELDERLY_FLAG
- Derived SEX_DESC
- Removed source variables with DROP
- Controlled final structure with KEEP

### Task 8 — Multi-condition clinical-style transformation
Created SDTM.DM_TASK8.
- Filtered ACTIVE subjects with AGE >= 18
- Derived AGEGRP
- Derived AGE_FLAG
- Derived SEX_DESC
- Derived SITE_TYPE
- Used categorical membership logic for site classification:
  - S01/S02 → MAIN
  - S03/S04 → OTHER
- Practiced IN as an alternative to repeated OR conditions
- Dropped STATUS
- Kept only final variables

Expected retained subjects for Task 8: 1001, 1002, 1003, 1006, 1007.

## Key Mental Model
- DATA = dataset being created
- SET = existing dataset being read
- WHERE = observations that survive
- IF = condition/derivation
- KEEP = variables that remain
- DROP = variables removed
- IN = check whether a value belongs to a list of values

## Important Learning Notes
- SET RAW.DM; reads an existing SAS dataset; it does not recreate inline data.
- WHERE AGE >= 18 retains adults and excludes younger subjects. Numeric missing values are also excluded because SAS numeric missing is lower than ordinary numeric values.
- ELSE IF is important when classifications are mutually exclusive; independent IF statements can overwrite earlier derivations.
- Character values must be compared using quotes, e.g. SEX="M".
- OR is valid for multiple categorical conditions. IN ("S01","S02") is a concise SAS-specific alternative.
- KEEP and DROP should be used deliberately; KEEP already excludes variables not listed.
- A clean SAS log does not guarantee clinically correct logic; output and intermediate results must be reviewed.

## Day 04 Assessment
Day 04 practical work completed successfully. Minor syntax/typing slips were corrected during practice, while the underlying programming concepts were demonstrated successfully.

## Next Day
Day 05 will introduce SAS functions, beginning with UPCASE() and practical data standardization.

## Data Privacy
All examples use synthetic educational clinical-style data only.
