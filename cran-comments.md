This is my first submission to CRAN - thank you for your effort!

## Resubmission

* initial submission July 12th
* Updated Description field in DESCRIPTION with reference
* Replaced options(warn=-1) with suppressWarnings()

## Test environments

* local OS X x86_64-apple-darwin17.0 (64-bit), R 4.1.0
* Windows Server 2008 R2 SP1, R-release, 32/64 bit 
* Windows platform x86_64-w64-mingw32 (64-bit), R Under development (unstable) 
(2021-07-09 r80613)
* Fedora Linux, R-devel, clang, gfortran
* Ubuntu Linux 20.04.1 LTS, R-release, GCC

## R CMD check results

There were no ERRORs or WARNINGs.

There was 1 NOTE:

* Possibly mis-spelled words in DESCRIPTION:
  Hsi (25:40)
  al (25:58)
  et (25:55)
  mRNA (28:11)
  miRNA (3:8, 19:44, 20:27, 21:15, 24:25, 28:5)
  miRNAs (23:41)
  miRTarBase (25:16, 26:6)
  miRetrieve (20:5, 22:67, 24:58)
  microRNA (19:34, 26:63)
  tokenization (23:52)
  
  "microRNA" and its abbreviation "miRNA(s)" are common and correctly spelled 
  terms in the biological field of miRNAs. "miRTarBase" is the name of a
  database, published by "Hsi", "et" "al". "tokenization" is a Natural
  Language Processing tool used in the package "miRetrieve".
  
 ## Downstream dependencies
 
 There are no downstream dependencies.
