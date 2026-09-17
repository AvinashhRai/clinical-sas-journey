# Day 03 — Libraries, Metadata, Conditions & Data Manipulation

## Status
Completed

## What I studied

- SAS libraries and librefs
- LIBNAME
- One-level vs two-level dataset names
- PROC CONTENTS
- DATA step and SET
- IF / THEN / ELSE
- WHERE
- KEEP
- DROP
- Character vs numeric variables/comparisons
- AND / OR logic
- Observation counting
- PROC SQL
- PROC SORT
- Duplicate/key checks
- MERGE
- BY variables
- Basic JOIN/MERGE concepts
- Missing keys
- Type mismatches
- SAS Log review and debugging
- RAW → SDTM-style transformation

## Metadata

I learned that PROC CONTENTS is used to inspect the structure/metadata of a dataset, including things such as:

- Number of observations
- Number of variables
- Variable names
- Variable types
- Variable lengths
- Formats/informats when present
- Variable order
- Dataset information

PROC PRINT is used to look at the actual observations.

## Conditions and filtering

I practiced the difference between:

- `WHERE` — filters observations
- `IF` — can filter observations and can also be used to derive/modify variables

I practiced conditional derivations using IF/THEN/ELSE.

I also practiced:

- Numeric comparisons
- Character comparisons using quotes, e.g. `SEX = "M"`
- `AND`
- `OR`

## KEEP and DROP

- KEEP specifies variables to retain
- DROP specifies variables to remove

These were practiced as part of creating derived datasets rather than just as definitions.

## Counting and checking data

I practiced counting observations with PROC SQL:

```sas
PROC SQL;
    SELECT COUNT(*) AS N
    FROM DM_RAW;
QUIT;
```

I also used PROC FREQ to check categorical distributions.

## Sorting, duplicates and keys

I practiced PROC SORT and looked at duplicate/key handling using SUBJID.

I learned that duplicate records should not automatically be deleted. First determine whether repeated records are legitimate for that dataset or are actually errors.

I also practiced `NODUPKEY` and learned that key management matters when checking uniqueness.

## MERGE

I practiced combining a subject-level dataset with a second synthetic site dataset using:

- PROC SORT
- BY variable
- MERGE

I learned that datasets need appropriate BY-variable handling/sorting for a DATA-step MERGE, and that missing keys or mismatched data can cause unexpected results.

I also learned the basic idea of SQL JOINs as another way datasets can be combined.

## Debugging

A major part of Day 3 was learning how to investigate unexpected results instead of assuming the code is correct.

Things to check include:

- WHERE/IF conditions
- Observation counts
- Duplicate records
- Missing keys
- Type mismatches
- MERGE/JOIN logic
- SAS Log messages

## Practice

Worked with synthetic clinical-style demographic data and practiced:

- IF/ELSE derivations
- WHERE filtering
- KEEP/DROP
- Observation counting
- Frequency checks
- Sorting
- Duplicate/key checks
- MERGE
- Reviewing the resulting dataset

## Questions / clarifications from Day 3

- What a SAS library and libref are
- What PROC CONTENTS actually shows
- CONTENTS vs PRINT
- WHERE vs IF
- Character vs numeric comparisons
- Why character values need quotes
- How to investigate fewer/more subjects than expected
- Why duplicate records should not be blindly removed
- Why keys, sorting and matching variables matter during MERGE

All examples are synthetic educational data.
