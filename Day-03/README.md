# Day 03 — Data Manipulation, Conditions & Debugging

## Status
Completed — concepts studied and practiced.

## Topics Covered

### IF / ELSE
Used to create conditional logic during DATA-step processing.

```sas
if AGE >= 18 then ELIGIBLE='Y';
else ELIGIBLE='N';
```

### WHERE
Used to select observations that meet a condition.

```sas
data adults;
    set dm_raw;
    where AGE >= 18;
run;
```

### IF vs WHERE
- `IF` is DATA-step logic and can create, modify, or conditionally process variables/observations.
- `WHERE` filters observations before they are processed by the DATA step when applicable.
- Understanding the distinction is important for efficient and predictable SAS programming.

### KEEP and DROP
Control which variables remain in the output dataset.

```sas
data dm_subset;
    set dm_raw;
    keep SUBJID AGE SEX RACE;
run;
```

```sas
data dm_subset;
    set dm_raw;
    drop COUNTRY SITE;
run;
```

### Character vs Numeric
- Character variables contain text and are represented with quotes when assigning values.
- Numeric variables contain numbers and can be used directly in arithmetic comparisons.

Example:
```sas
if SEX='M' then MALE='Y';
if AGE >= 18 then ADULT='Y';
```

### Counting Observations
Dataset counts are important validation checks.

```sas
proc sql;
    select count(*) as N from dm_raw;
quit;
```

A programmer should compare expected and actual counts and investigate unexpected differences.

### MERGE Concepts
SAS `MERGE` can combine datasets by common variables, usually after appropriate sorting when using a BY statement.

```sas
proc sort data=dm_raw; by SUBJID; run;
proc sort data=dm_other; by SUBJID; run;

data combined;
    merge dm_raw dm_other;
    by SUBJID;
run;
```

### Duplicate Records
Duplicate subject keys or repeated records must be identified and understood before downstream processing.

```sas
proc sort data=dm_raw out=dm_sorted nodupkey;
    by SUBJID;
run;
```

Important: removing duplicates blindly is not a valid clinical programming practice. First determine whether the repeated records are legitimate or erroneous.

### Basic Debugging
The SAS Log should be reviewed for:
- Errors
- Warnings
- Notes indicating unexpected processing
- Variable type/length issues
- Observation counts
- Missing or unexpected output

Example validation mindset:
> If 500 subjects are expected but only 470 appear in the output, investigate the filtering, source data, merge conditions, duplicates, and program logic rather than assuming the result is correct.

## Practical Learning
- Apply conditions to synthetic clinical data.
- Filter observations.
- Keep/drop variables.
- Count observations.
- Understand basic dataset combination.
- Recognize duplicate-record risks.
- Use the SAS Log as a debugging and validation tool.

## Key Takeaways
1. `IF` and `WHERE` are not interchangeable.
2. `KEEP` and `DROP` control variables, while `WHERE` primarily controls observations.
3. Character and numeric variables require appropriate syntax and comparisons.
4. Counts are useful validation checks.
5. MERGE requires careful key management.
6. Duplicate records must be investigated, not blindly deleted.
7. The SAS Log is essential for debugging and quality checks.

## Data Privacy
All examples are synthetic and created for educational purposes. No patient data, confidential company information, proprietary documents, or real clinical-trial data are included.
