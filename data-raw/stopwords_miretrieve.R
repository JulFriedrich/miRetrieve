library(miRetrieve)

# Combination of stop words for English (tidytext), PubMed (single word),
# common 2grams
stopwords_miretrieve <- miRetrieve::combine_stopwords(tidytext::stop_words,
                                                   stopwords_pubmed,
                                                   stopwords_2gram)

usethis::use_data(stopwords_miretrieve, overwrite = TRUE)
