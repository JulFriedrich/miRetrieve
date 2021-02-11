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
```

first, followed by

```
devtools::install_github("JulFriedrich/miRetrieve",
        dependencies = TRUE,
        repos = "https://cran.r-project.org/",
        build_vignettes = TRUE)
```

An overview of the mechanisms behind miRetrieve are detailed in the
vignette, that can be accessed with
```
vignette("miRetrieve")
```

A full documentation is available [here](miRetrieve_1.1.0.pdf).

## Authors

**Julian Friedrich**, **Hans-Peter Hammes**, **Guido Krenning**

## License

miRetrieve is published under the GPL-3 license.

### Note

miRetrieve runs smoothly with

```
    dplyr (1.0.3),
    forcats (0.5.1),
    ggplot2 (3.3.3),
    knitr (1.31),
    kableExtra (1.3.1),
    magrittr (2.0.1),
    openxlsx (4.2.3),
    plotly (4.9.3),
    purrr (0.3.4),
    readr (1.4.0),
    readxl (1.3.1),
    renv (0.12.5),
    scales (1.1.1),
    stringr (1.4.0),
    tidyr (1.1.2),
    tidytext (0.3.0),
    topicmodels (0.2.12),
    wordcloud (2.6),
    xml2 (1.3.2),
    zoo (1.8.8)
```
In case you run into trouble, please install the 
[renv package](https://rstudio.github.io/renv/articles/renv.html) and use 
the *renv.lock* file to restore the needed libraries. A detailed explanation is
[here](https://rstudio.github.io/renv/articles/renv.html).

## Reference

## Acknowledgments

* `compare_mir_terms_log2()`, `compare_mir_count_log2()`, and 
`compare_mir_terms_scatter()` are greatly inspired by 
“tidytext: Text Mining and Analysis Using Tidy Data Principles in R.” by
Silge and Robinson (https://www.tidytextmining.com/). In addition, "tidytext"
provides a valuable resource of general text mining in R.

* Key packages for miRetrieve are *tidytext*, *topicmodels*, 
and the packages included in the *tidyverse* (see Vignette).
