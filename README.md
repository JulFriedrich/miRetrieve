# miRetrieve

miRetrieve is designed for microRNA text mining in abstracts. 
By extracting, counting, and analyzing miRNA names from literature, miRetrieve 
aims at providing biological insights from a large amount of text within a short 
period of time.

## Getting Started

An online version with the most important functions of miRetrieve is available 
under https://miretrieve.shinyapps.io/miRetrieve/.

To install miRetrieve locally, run

```
install.packages("devtools")
devtools::install_git("JulFriedrich/miRetrieve",
        dependencies = TRUE,
        repos = "https://cran.r-project.org/")
```

An overview of the mechanisms behind miRetrieve are detailed in the
Vignette, whereas a full documentation is available in ... 


## Authors

**Julian Friedrich**, **Hans-Peter Hammes**, **Guido Krenning**

## License

miRetrieve is published under the GPL-3 license.

## Reference

## Acknowledgments

* `compare_mir_terms_log2()`, `compare_mir_count_log2()`, and 
`compare_mir_terms_scatter()` are greatly inspired by 
“tidytext: Text Mining and Analysis Using Tidy Data Principles in R.” by
Silge and Robinson (https://www.tidytextmining.com/). In addition, "tidytext"
provides a valuable resource of general text mining in R.

* Key packages for miRetrieve are *tidytext*, *topicmodels*, 
and the packages included in the *tidyverse* (see Vignette).
