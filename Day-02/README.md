# Day 02 — SAS Program Structure, Libraries & Data Traceability

## Status
**Completed**

## Topics Studied
- SAS Studio Editor, Log and Results/Output
- DATA and PROC steps
- Statements vs steps
- Comments and RUN
- WORK library
- One-level vs two-level dataset names
- LIBNAME and permanent libraries
- RAW and SDTM organization
- Source-data preservation
- Traceability, reproducibility and data integrity
- Clinical programming workflow

## Core Notes
SAS Studio flow: Editor → Run → SAS processing → Log → Results/Output.

The Log contains processing messages, NOTE/WARNING/ERROR information and execution details. Actual dataset output is viewed in Results/Output.

WORK is temporary; its defining feature is session persistence, not dataset size.

A permanent library can be referenced with LIBNAME, for example:
LIBNAME RAW '/home/u64422038/SAS Training/RAW';

A one-level name such as DM normally refers to WORK.DM. SDTM.DM means libref SDTM plus dataset DM.

LIBNAME establishes the association between a libref and a physical location; it does not itself create a missing physical folder.

RAW preserves source/input data. SDTM represents standardized clinical tabulation data. Source data should not be overwritten.

## Practice Sets Completed
- Library setup and libref exercises
- WORK vs permanent library exercises
- RAW/SDTM organization
- Source-preservation and traceability exercises
- SAS Studio Log/Results interpretation

## Questions Answered During Practice
**Q: What is a statement vs a step?**  
A: A statement is an individual instruction; a step is a group of statements performing a task.

**Q: Is WORK only for small datasets?**  
A: No. WORK is temporary.

**Q: What does LIBNAME do?**  
A: It assigns a libref to a physical location so SAS can reference datasets there.

**Q: Does LIBNAME create the folder?**  
A: No. The physical location must exist and be accessible.

**Q: Why use RAW → SDTM rather than overwrite RAW?**  
A: Preserving source data supports traceability, reproducibility, data integrity and auditability.

**Q: What does SDTM.DM mean?**  
A: SDTM is the libref and DM is the dataset name.

**Q: Where are actual dataset results shown?**  
A: Results/Output; the Log primarily contains processing information.

## Practical Code
- day02_sas_structure.sas
- day02_practice_sets.sas

## Assessment
- Theory/practical quiz: 95/100
- Practical: 92/100

## Data Privacy
All examples are synthetic educational data only.