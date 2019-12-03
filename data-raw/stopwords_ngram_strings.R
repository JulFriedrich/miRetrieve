stopwords_vec <- tidytext::stop_words %>%
    dplyr::select(1) %>%
    dplyr::pull() %>%
    c("\\.")

ngram_stopwords <- stringr::str_c(stopwords_vec, collapse = " | ")

ngram_stopwords <- stringr::str_c(" ", ngram_stopwords, collapse = "")

usethis::use_data(ngram_stopwords, overwrite = TRUE)
