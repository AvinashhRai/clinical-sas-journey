# Day 06 — SAS Character Search & Count Functions

## Status
Completed for today — 16 tasks

## What I studied
Day 06 continued SAS character functions, focusing first on locating characters and then on counting characters.

## Functions practiced
- ANYALPHA()
- ANYSPACE()
- NOTDIGIT()
- NOTALPHA()
- NOTSPACE()
- ANYUPPER()
- ANYLOWER()
- NOTUPPER()
- NOTLOWER()
- VERIFY()
- ANYALNUM()
- NOTALNUM()
- ANYXDIGIT()
- NOTXDIGIT()
- COUNT()
- COUNTC()

## Practice approach
I worked directly with RAW.DM and created position/count variables in SDTM.DM, followed by PROC PRINT to review the output.

The main pattern learned was:
- ANY... functions find the first matching character position.
- NOT... functions find the first character that does not match the specified class.
- VERIFY() checks characters against an allowed character list.
- COUNT() counts occurrences of a specified character/string.
- COUNTC() counts characters from a specified character list.

## Corrections during practice
One function-name typo occurred while practicing NOTSPACE(): I initially typed NOTESPACE() and corrected it to NOTSPACE().
While practicing ANYALNUM(), I initially used the wrong function name and had a variable-name mismatch; both were corrected before completing the task.

## Day 06 stopping point
16/16 completed tasks.

COUNTW() was introduced but not practiced yet. It will be the starting point for the next session.

## Data Privacy
All examples use synthetic educational clinical-style data only.
