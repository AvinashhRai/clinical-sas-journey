# Day 05 — SAS Character Functions

## Status
Completed

## What I studied
Practical SAS character functions for cleaning, standardizing, extracting, searching, counting length, replacing text, and combining character values.

## Functions practiced
- UPCASE()
- LOWCASE()
- STRIP()
- COMPRESS()
- SUBSTR()
- LENGTH()
- INDEX()
- SCAN()
- CATX()
- CATS()
- TRANWRD()
- FIND()
- ANYDIGIT()
- ANYALPHA() — completed at the start of Day 06

## Practice
Worked with RAW.DM and created SDTM-style derived variables. I practiced combining functions, for example:
- UPCASE(STRIP(SITE))
- UPCASE(STRIP(COUNTRY))
- SCAN(SITE,2,"S")
- CATX("-",SITE,SUBJID)

## Important correction
While practicing SCAN(), I initially had the token/delimiter setup wrong. The working form was:

SCANS:
`SITE_NUM = SCAN(SITE,2,"S");`

The second argument selects the token position and "S" is the delimiter.

## Completion
Day 05 character-function practice completed. A combined practice program was also completed before moving into the ANY/NOT character-position functions.

## Data Privacy
All examples use synthetic educational clinical-style data only.
