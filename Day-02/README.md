# Day 02 — SAS Program Structure, Libraries & Data Traceability

## Status
Completed — concepts studied and practiced.

## Topics Covered

### SAS Statements vs SAS Steps
- A SAS statement is an instruction that normally ends with `;`.
- A SAS step is a group of statements performing a specific task.
- DATA and PROC steps are commonly terminated with `RUN;`.

### WORK Library
- Temporary SAS library.
- Datasets stored in WORK normally exist only for the current SAS session.
- Useful for intermediate datasets and temporary processing.

### Permanent Libraries
Permanent libraries store datasets outside WORK so they can be reused across SAS sessions.

Example:
```sas
libname RAW '/home/u64422038/SAS Training/RAW';
libname SDTM '/home/u64422038/SAS Training/SDTM';
```

### RAW and SDTM
- RAW represents source or minimally processed clinical data.
- SDTM represents standardized clinical trial tabulation data.
- The transformation should remain traceable and reproducible.

### Traceability
A programmer should be able to understand where an output came from and how it was derived.

### Reproducibility
The same source data and validated program should produce the expected result when rerun under the same conditions.

### Data Integrity
Clinical programming requires accurate, complete, consistent, attributable and traceable data processing.

## Practical Learning
- Creating libraries with `LIBNAME`
- Understanding temporary vs permanent datasets
- Organizing RAW and SDTM areas
- Thinking about source-to-output traceability

## Key Takeaways
1. WORK is temporary.
2. Permanent libraries preserve datasets beyond the SAS session.
3. LIBNAME assigns a library reference to a physical location.
4. RAW and SDTM have different roles in the clinical data flow.
5. Traceability and reproducibility are fundamental in regulated clinical programming.

## Data Privacy
All examples are synthetic and educational. No patient, employer-confidential, or real clinical-trial data are included.
