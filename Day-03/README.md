# Day 03 — Libraries, Metadata, Conditions & Data Manipulation

## Status
**Completed**

## Topics Studied
- SAS libraries and librefs
- LIBNAME
- One-level and two-level dataset references
- PROC CONTENTS
- DATA and SET concepts
- IF / THEN / ELSE
- WHERE
- KEEP / DROP
- Character vs numeric comparisons
- AND / OR logic
- Observation counting
- MERGE / JOIN concepts
- Duplicate records
- Missing keys and type mismatches
- SAS Log review
- RAW → SDTM-style transformations

## Core Notes
A SAS library is a logical reference to a location containing SAS datasets.

PROC CONTENTS shows dataset metadata such as observations, variables, names, types, lengths, formats/informats and order.

WHERE primarily filters observations. IF can filter observations and perform conditional derivations.

KEEP specifies variables to retain. DROP specifies variables to remove.

MERGE can combine datasets using a common BY variable; key management and appropriate sorting are important.

Duplicate records must be investigated rather than blindly deleted because repeated records can be legitimate.

## Practice Sets Completed
- Conditional filtering
- Character/numeric comparisons
- KEEP/DROP
- Observation counting
- MERGE concepts
- Duplicate/key validation
- Debugging exercises

## Questions Answered During Practice
**Q: What is a library?**  
A: A logical location/reference used by SAS to access datasets.

**Q: What is a libref?**  
A: The short library reference assigned through LIBNAME, such as RAW or SDTM.

**Q: What does DM mean as a one-level name?**  
A: WORK.DM.

**Q: What does PROC CONTENTS show?**  
A: Dataset metadata/structure rather than observation rows.

**Q: CONTENTS vs PRINT?**  
A: CONTENTS shows metadata; PRINT displays observations.

**Q: WHERE vs IF?**  
A: WHERE filters observations; IF can filter and derive/modify values during DATA-step processing.

**Q: Why quote a value such as "M"?**  
A: SEX is character, so character values are written as quoted strings.

**Q: How do I investigate fewer subjects than expected?**  
A: Check filters, joins/merges, duplicates, missing keys, type mismatches and intermediate counts.

**Q: Should duplicate records always be removed?**  
A: No. First determine whether repeated records are legitimate or erroneous for that dataset.

## Practical Code
- day03_data_manipulation.sas
- day03_practice_sets.sas

## Assessment
- Practical assessment: 97/100

## Data Privacy
All examples are synthetic educational data only.