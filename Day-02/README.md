# Day 02 — SAS Program Structure, Libraries & Data Traceability

## Status
Completed

## What I studied

- SAS Studio Editor
- SAS Log
- Results / Output
- How a SAS program runs: Editor → Run → SAS processing → Log / Results
- SAS statements vs SAS steps
- A statement is an individual instruction ending in `;`
- A step is a group of statements performing a task
- Comments
- `RUN;`
- WORK library
- One-level and two-level dataset names
- LIBNAME
- Libref
- Permanent libraries
- RAW and SDTM library organization
- Basic dataset references such as `SDTM.DM`

## Libraries

I learned that a SAS library is a logical reference to a physical location containing SAS datasets.

Example:

```sas
LIBNAME RAW '/home/u64422038/SAS Training/RAW';
LIBNAME SDTM '/home/u64422038/SAS Training/SDTM';
```

A one-level name such as `DM` normally refers to `WORK.DM`.

`SDTM.DM` means:

- SDTM = libref/library reference
- DM = dataset name

I also learned that LIBNAME establishes the connection between a libref and a physical location; it does not itself create a missing folder.

## WORK vs permanent data

WORK is temporary and is normally removed when the SAS session ends.

Permanent libraries are used when datasets need to persist beyond the current session.

The important point is that WORK is temporary — it is not defined by whether a dataset is small or large.

## RAW and SDTM

I learned why source/input data should be preserved rather than overwritten.

Basic idea:

RAW → SDTM

RAW represents source/minimally processed data, while SDTM is the standardized clinical data layer.

Keeping the source separate supports:

- Traceability
- Reproducibility
- Data integrity
- Auditability

## Practice

- Created a WORK dataset
- Used PROC PRINT and PROC CONTENTS
- Created RAW and SDTM library references
- Copied a dataset from WORK into RAW
- Created an SDTM dataset from RAW
- Practiced one-level and two-level dataset references

## Questions / clarifications from Day 2

- Difference between a statement and a step
- What WORK actually means
- Whether WORK is only for small datasets
- What LIBNAME does
- Whether LIBNAME creates a physical folder
- What a libref is
- What `SDTM.DM` means
- Where dataset results are viewed compared with the Log
- Why RAW should not simply be overwritten by processed data

All examples are synthetic educational data.
