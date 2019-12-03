---
output: github_document
bibliography: miretrieve.bib
---

# miRetrieve

miRetrieve is designed for microRNA text mining in abstracts. 
By extracting, counting, and analyzing miRNA names from literature, miRetrieve 
aims at providing biological insights from a large amount of text within a short 
period of time.

## Getting Started

An online version with the most important functions of miRetrieve is available 
under ...

To install miRetrieve locally, run

```
install.packages("devtools")
devtools::install_git("JulFriedrich/miRetrieve",
        dependencies = TRUE,
        repos = "https://cran.r-project.org/")
```

An overview of the mechanisms behind miRetrieve are detailed in the
Vignette, whereas a full documentation is available under ... 


## Authors

**Julian Friedrich**, **Hans-Peter Hammes**, **Guido Krenning**

## License

This project is licensed under the GPL-3 license - see 
the [LICENSE.md](LICENSE.md) file for details.

## Reference

## Acknowledgments

* `compare_mir_terms_log2()`, `compare_mir_count_log2()`, and 
`compare_mir_terms_scatter()` are greatly inspired by 
“tidytext: Text Mining and Analysis Using Tidy Data Principles in R.” by
Silge and Robinson (https://www.tidytextmining.com/). In addition, "tidytext"
provides a valuable resource of general text mining in R.

* Key packages for miRetrieve are *tidytext* [@tidytext], *topicmodels* [@topicmodels], 
and the packages included in the *tidyverse* [@tidyverse].
