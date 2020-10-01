## ----noidea, include = FALSE---------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  warning=FALSE,
  message=FALSE
)

## ----setup, include=FALSE, echo=FALSE------------------------------------
path <- "/Users/Julian/Documents/Jupyter/miRetrieve_pkg_files/"
fig_path <- "figure/"
require("knitr")
knitr::opts_knit$set(base.dir = path, base.url = path, root.dir = path)
knitr::opts_chunk$set(fig.path = fig_path)
library(kableExtra)
library(magrittr)
library(dplyr)
library(ggplot2)

## ----imagespath, include=FALSE, echo=FALSE, eval=TRUE--------------------
tokenization_img <- "Tokenization_miRetrieve_res.png"
stopword_img <- "Stopwordremoval_miRetrieve_res.png"
lda_img <- "LDA_miRetrieve_resized.png"

## ----tokenize, echo=FALSE, fig.cap="<font size='1'><b>Tokenization in NLP.</b> Tokenization refers to splitting text into smaller pieces, called tokens. Two common tokenization approaches are single word tokenization <b>(A)</b> and n-gram tokenization, splitting text into each combination of n adjacent words such as 2-grams <b>(B)</b></font>."----
knitr::include_graphics(tokenization_img)

## ----tokenizeexample, eval = FALSE---------------------------------------
#  # Analyze miRNA-term association of miR-34 by single word tokenization
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 token = "words")
#  
#  # Analyze miRNA-term association of miR-34 by 2-gram tokenization
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 token = "ngrams",
#                 n = 2)

## ----tfidfexample, eval = FALSE------------------------------------------
#  # Analyze miRNA-term association of miR-34 with tf-idf
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 tf.idf = TRUE)
#  
#  # Analyze miRNA-term association of miR-34 without tf-idf
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 tf.idf = FALSE)

## ----stop, echo=FALSE, fig.cap="<font size='1'><b>Stop word removal.</b> Stop words refer to common words that offer no information for text analysis. It is therefore common practice to remove stop words in text analysis.</font>"----
knitr::include_graphics(stopword_img)

## ----stopwordremoval_miretrieve, eval = FALSE----------------------------
#  # Remove common English and PubMed words with `stopwords_miretrieve`
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 stopwords = stopwords_miretrieve)

## ----stopwordremoval_tidytext, eval = FALSE------------------------------
#  # Remove common English words with `stop_words` from tidytext
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 stopwords = tidytext::stop_words)

## ----customstop, eval = FALSE--------------------------------------------
#  # Vector of custom stop words
#  custom_stopwords <- c("these", "are", "some", "custom", "stop", "words")
#  
#  # Generate custom stop words data frame
#  # Combine custom stop words with `stopwords_miretrieve`
#  custom_stopwords_df <- generate_stopwords(custom_stopwords,
#                                            combine_with = stopwords_miretrieve)
#  
#  # Generate custom stop words data frame
#  # Combine with `tidytext::stop_words` separately
#  custom_stopwords_df <- generate_stopwords(custom_stopwords)
#  stopwords_combined <- combine_stopwords(custom_stopwords_df,
#                                          tidytext::stop_words)

## ----stoptwogram, eval = FALSE-------------------------------------------
#  # Remove English stop words for 2-gram tokenization
#  # Remove PubMed 2-grams with `stopwords_miretrieve`
#  plot_mir_terms(df,
#                 mir = "miR-34",
#                 token = "ngrams",
#                 n = 2,
#                 stopwords = stopwords_miretrieve,
#                 stopwords_ngram = TRUE)

## ----plotscore, eval = FALSE---------------------------------------------
#  # Plot score distribution, determine threshold
#  plot_score_patients(df)
#  
#  # Calculate score for abstracts investigating miRNAs in patients
#  calculate_score_patients(df,
#                           threshold = 5)

## ----customscore, eval = FALSE-------------------------------------------
#  # Define keywords of custom topic "angiogenesis"
#  keywords_angiogenesis <- c("angiogenesis", "vegf", "vascularization",
#                             "sprouting")
#  
#  # Plot distribution of "angiogenesis" scores
#  plot_score_topic(df,
#                   keywords = keywords_angiogenesis,
#                   name.topic = "Angiogenesis")
#  
#  # Calculate angiogenesis score for each abstract
#  df_angio <- calculate_score_topic(df,
#                                    keywords = keywords_angiogenesis,
#                                    threshold = 3)

## ----assigntopic, eval = FALSE-------------------------------------------
#  # Define keywords for type 1 diabetes
#  keywords_t1dm <- c("pancreas", "beta cells", "gada")
#  
#  # Define keywords for type 2 diabetes
#  keywords_t2dm <- c("insulin resistance", "obesity", "metformin")
#  
#  # Calculate type 1 diabetes scores for each abstract
#  df_diabetes <- calculate_score_topic(df,
#                                       keywords = keywords_t1dm,
#                                       name.topic = "T1DM")
#  
#  # Calculate type 2 diabetes scores for each abstract
#  df_diabetes <- calculate_score_topic(df_diabetes,
#                                       keywords = keywords_t2dm,
#                                       name.topic = "T2DM")
#  
#  # Assign abstracts with a score of >= 3 in "T1DM" to type 1 diabetes
#  # Assign abstracts with a score of >= 3 in "T2DM" to type 2 diabetes
#  # Abstracts with a score < 3 in "T1DM" and "T2DM" are assigned to
#  # "Unknown".
#  assign_topic(df_diabetes,
#               col.topic = c("T1DM", "T2DM"),
#               threshold = c(3, 3))

## ----lda, echo=FALSE, fig.cap="<font size='1'><b>Unsupervised topic modeling with LDA.</b> <b>(A)</b> LDA is fit on a corpus and identifies k = 3 topics based on different criteria. For each text in the corpus, a topic probability to belong to either topic is calculated and the text is assigned to the topic with the highest topic probability. <br> <b>(B)</b> Tokenizing the texts in a topic and determining their most frequent tokens aids in inferring the main subject of unsupervisedly discovered topics.</font>"----
knitr::include_graphics(lda_img)

## ----fitlda, eval = FALSE------------------------------------------------
#  # Fit LDA model with k = 4 topics
#  # Identify 4 topics in df
#  lda_model <- fit_lda(df,
#                       k = 4)
#  
#  # Identify subject of topics
#  plot_lda_term(lda_model)
#  
#  # Assign LDA topics
#  assign_topic_lda(df,
#                   lda_model = lda_model,
#                   topic.names = c("Topic1", "Topic2", "Topic3", "Topic4"))

## ----perplexfig, echo=FALSE, fig.cap="<font size='1'><b>Perplexity 'elbow' plot comparing the perplexity of LDA models over a range of topic numbers.</b><br>Fitting LDA models over k = 2, k = 3, and k = 4 topics considerably decreases the perplexity. Fitting LDA models over further k = 5, k = 6, and k = 7 topics, however, decreases the perplexity only slightly, indicating a marginal model improvement with k > 4. This suggests k = 4 topics as a  practical starting point to explore LDA topic modeling in this corpus.</font>"----
perplex_value <- c(2000, 1800, 1600, 1550, 1500, 1450)

perplexity <- dplyr::tibble("Perplexity" = perplex_value,
                            "Topics" = seq(2, length(perplex_value) + 1))

ggplot2::ggplot(perplexity, aes(Topics, Perplexity)) + 
    ggplot2::geom_point(color = "#188CDF") + 
    ggplot2::geom_line(color = "#188CDF") + 
    ggplot2::theme_classic() +
    ggplot2::xlab("Number of topics k")

## ----perplexityplotexplanation, eval = FALSE-----------------------------
#  # Plot perplexity for 2 to 5 topics
#  # Identify optimal topic number
#  plot_perplexity(df, start = 2, end = 5)

## ----loaddata, eval = FALSE----------------------------------------------
#  # Read in PubMed-file from diabetes abstracts
#  # Denote abstracts as "Diabetes"
#  df <- read_pubmed("pubmedfile_diabetes.txt", topic = "Diabetes")
#  
#  # Is the same as
#  df <- read_pubmed("pubmedfile_diabetes.txt")
#  df <- add_col_topic(df, topic.name = "Diabetes")

## ----combinedata, eval = FALSE-------------------------------------------
#  # Load first PubMed-file
#  df1 <- read_pubmed("pubmedfile1.txt",
#                             topic = "cANCA")
#  
#  # Load second PubMed-file
#  df2 <- read_pubmed("pubmedfile2.txt",
#                             topic = "pANCA")
#  
#  # Combine df1 and df2
#  df_large <- combine_df(df1, df2)

## ----subsetresearch, eval = FALSE----------------------------------------
#  # Subset for abstracts of original research articles
#  df_research <- subset_research(df)

## ----extractmir, eval = FALSE--------------------------------------------
#  # Extract miRNA names mentioned at least twice in an abstract without trailing letters
#  extract_mir_df(df,
#                 threshold = 2,
#                 extract_letters = FALSE)
#  
#  # Extract miRNA names from a string with trailing letters
#  extract_mir_string("miR-146a is an important miRNA in inflammation.",
#                     extract_letters = TRUE)

## ----subsetmir, eval = FALSE---------------------------------------------
#  # Keep only abstracts with miR-126 and miR-146
#  df_mir126_miR_146 <- subset_mir(df,
#                                  mir.retain = c("miR-126", "miR-146"))
#  
#  # Keep only abstracts with miRNAs mentioned in at least 5% of all abstracts
#  df_five_ab <- subset_mir_threshold(df,
#                                     threshold = 0.05)

## ----indicatemir, eval = FALSE-------------------------------------------
#  # Indicate abstracts with miR-126 and miR-146
#  df_mir126_miR_146 <- indicate_mir(df,
#                                    indicate.mir = c("miR-126", "miR-146"))
#  
#  # Save data frame as an .xlsx file
#  # Filter for miR-126 and miR-146 in excel
#  save_excel(df_mir126_miR_146,
#             excel_file = "df_mir_126146.xlsx")

## ---- eval = FALSE-------------------------------------------------------
#  # Subset data frame with customized arguments
#  subset_df(df,
#            col.filter = miRNA,
#            filter_for = "miR-126")
#  
#  # `subset_df()` is a more general version of
#  subset_mir(df, "miR-126")

## ---- eval = FALSE-------------------------------------------------------
#  # Save df1 and df2 to the same .xlsx-file
#  save_excel(df1, df2,
#             excel_file = "miRetrieve_df.xlsx")

## ---- eval = FALSE-------------------------------------------------------
#  # Save last plot
#  save_plot("Last_plot.pdf",
#            height = 5,
#            width = 7,
#            dpi = 300)

## ---- eval = FALSE-------------------------------------------------------
#  # Copy PubMed-IDs to clipboard
#  get_pmid(df,
#           copy = TRUE)

## ---- eval = FALSE-------------------------------------------------------
#  # Count how many abstracts mention a miRNA
#  count_mir(df)
#  
#  # Plot the count of the five most frequently mentioned miRNAs
#  plot_mir_count(df,
#                 top = 5)

## ---- eval = FALSE-------------------------------------------------------
#  # Count how many miRNAs are mentioned in at least 5 abstracts
#  count_mir_threshold(df,
#                      threshold = 5)
#  
#  # Plot how many miRNAs are mentioned in at least 5 to 10 abstracts
#  plot_mir_count_threshold(df,
#                           start = 5,
#                           end = 10)

## ---- eval = FALSE-------------------------------------------------------
#  # Plot development of miR-126 and miR-146
#  plot_mir_development(df,
#                       mir = c("miR-126", "miR-146"))

## ---- eval = FALSE-------------------------------------------------------
#  # Plot newly mentioned miRNAs per year
#  # miRNAs need to be reported in at least 3 abstracts/year
#  # to be considered "mentioned"
#  plot_mir_new(df,
#               threshold = 3)

## ---- eval = FALSE-------------------------------------------------------
#  # Plot top terms of miR-126
#  plot_mir_terms(df,
#                 mir = "miR-126")
#  
#  # Plot top 2-grams of miR-126
#  plot_mir_terms(df,
#                 mir = "miR-126",
#                 token = "ngrams",
#                 n = 2)

## ---- eval = FALSE-------------------------------------------------------
#  # Word cloud of miR-126
#  plot_wordcloud(df,
#                 mir = "miR-126")

## ---- eval = FALSE-------------------------------------------------------
#  # Indicate and keep abstracts that mention "metformin" at least twice
#  abstracts_metformin <- indicate_term(df,
#                                       term = "metformin",
#                                       threshold = 2,
#                                       discard = TRUE)
#  
#  # Count miRNAs in "metformin" abstracts
#  count_mir(abstracts_metformin)

## ---- eval = FALSE-------------------------------------------------------
#  # Adds targets from miRTarBase (see "References") to df
#  df_targets <- join_targets(df,
#                             excel_file ="miRTarBase_MTI.xlsx",
#                             col.pmid.excel = "References (PMID)",
#                             col.target.excel = "Target Gene",
#                             col.mir.excel = "miRNA")

## ---- eval = FALSE-------------------------------------------------------
#  # Count target frequency
#  count_target(df_targets)
#  
#  # Plot target frequency
#  plot_target_count(df_targets)

## ---- eval = FALSE-------------------------------------------------------
#  # Plot most frequently targeted genes
#  plot_target_mir_scatter(df_targets,
#                          filter_for = "target")
#  
#  # Plot most frequently targeting miRNAs
#  plot_target_mir_scatter(df_targets,
#                          filter_for = "miRNA")

## ---- eval = FALSE-------------------------------------------------------
#  # Exctract SNPs
#  # Keep only abstracts with SNPs
#  snp_df <- extract_snp(df,
#                        discard = TRUE)

## ---- eval = FALSE-------------------------------------------------------
#  # Count SNPs
#  snp_count_df <- count_snp(snp_df)
#  
#  # Extract SNP name in the second row of snp_count_df
#  second_snp_string <- get_snp(snp_count_df,
#                               row = 2)
#  
#  # Subset `snp_df` for abstracts containing `second_snp_string`
#  subset_snp(snp_df,
#             snp.retain = second_snp_string)

## ---- eval = FALSE-------------------------------------------------------
#  # Load abstracts of the first topic
#  df1 <- read_pubmed(pubmed_file1, topic = "Virus")
#  
#  # Load abstracts of the second topic
#  df2 <- read_pubmed(pubmed_file2, topic = "Bacteria")
#  
#  # Combine abstracts of topics
#  df_combined <- combine_df(df1, df2)

## ---- eval=FALSE---------------------------------------------------------
#  # Get top 5 miRNAs of all topics
#  get_mir(df_combined,
#          top = 5)
#  
#  # Get top 5 miRNAs of the topic "Atherosclerosis"
#  get_mir(df_combined,
#          top = 5,
#          topic = "Atherosclerosis")

## ---- eval=FALSE---------------------------------------------------------
#  # Get top shared miRNAs of "T1DM" and "T2DM"
#  get_shared_mir_df(df_combined,
#                    topic = c("T1DM", "T2DM"))

## ---- eval=FALSE---------------------------------------------------------
#  # Get top miRNAs distinct for "ALL" compared to "AML"
#  get_distinct_mir_df(df_combined,
#                      distinct = "ALL",
#                      topic = c("ALL", "AML"))

## ---- eval=FALSE---------------------------------------------------------
#  # Get top 5 miRNAs of "CML"
#  top_topic1 <- get_mir(df_combined,
#                        top = 5,
#                        topic = "CML")
#  
#  # Get top 5 miRNAs of "CLL"
#  top_topic2 <- get_mir(df_combined,
#                        top = 5,
#                        topic = "CLL")
#  
#  # Combine vectors
#  top_combined <- combine_mir(top_topic1, top_topic2)

## ---- eval = FALSE-------------------------------------------------------
#  # Use `top_combined` from the previous code chunk
#  
#  # Compare miRNA frequency between topics
#  compare_mir_count(df_combined,
#                    mir = top_combined)
#  
#  # Compare miRNA frequency between subjects on a log2-scale
#  compare_mir_count_log2(df_combined,
#                         mir = top_combined)

## ---- eval = FALSE-------------------------------------------------------
#  # Identify 5 most frequent unique miRNAs per topic
#  compare_mir_count_unique(df_combined,
#                           top = 5)

## ---- eval = FALSE-------------------------------------------------------
#  # Compare term frequency for miR-126 between topics
#  compare_mir_terms(df_combined,
#                    mir = "miR-126")
#  
#  # Compare term frequency for miR-126 between two topics on a log2-scale
#  compare_mir_terms_log2(df_combined,
#                         mir = "miR-126")

## ---- eval=FALSE---------------------------------------------------------
#  # Compare terms of miR-126 between two topics
#  mir126_terms <- compare_mir_terms_scatter(df_combined,
#                                            mir = "miR-126")

## ---- eval = FALSE-------------------------------------------------------
#  # Identify most frequent unique terms of miR-126 per topc
#  compare_mir_terms_unique(df_combined,
#                           mir = "miR-126")

## ------------------------------------------------------------------------
# Load miRetrieve
library(miRetrieve)
# Load magrittr
library(magrittr)

# Path to PubMed-file
crc_pubmed <- "CRC_PubMed.txt"

# Load PubMed-file
df_crc <- read_pubmed(crc_pubmed,
                      topic = "CRC") %>%
  # Keep abstracts of original research articles
  subset_research() %>% 
  # Extract miRNA names
  extract_mir_df() 

## ---- eval=FALSE---------------------------------------------------------
#  # Label all abstracts mentioning miR-21 with "Yes"
#  df_mir21 <- indicate_mir(df_crc,
#                           indicate.mir = "miR-21")
#  
#  # Save as an .xlsx file
#  save_excel(df_mir21,
#             excel_file = "miR21_crc.xlsx")

## ----fig.show='hold', out.width='50%', fig.align='center'----------------
# Plot count of top miRNAs in CRC
plot_mir_count(df_crc,
               title = "Most frequently mentioned miRNAs in CRC")

## ---- fig.show='hold', out.width='50%', message=FALSE, warning=FALSE-----
# Plot top single terms associated with miR-21 in CRC
plot_mir_terms(df_crc,
               "miR-21",
               top = 30,
               title = "Top terms for miR-21 in CRC")

# Plot top 2-grams associated with miR-21 in CRC
plot_mir_terms(df_crc,
               "miR-21",
               token = "ngrams",
               n = 2,
               title = "Top 2-grams for miR-21 in CRC")

## ----fig.show='hold', out.width='50%', fig.align='center'----------------
# Plot score distribution for biomarker in CRC
plot_score_biomarker(df_crc,
                     title = "Biomarker score distribution in CRC")

## ----fig.show='hold', out.width='50%', fig.align='center'----------------
# Identify abstracts reporting miRNAs as biomarker in CRC
crc_biomarker <- calculate_score_biomarker(df_crc,
                                           threshold = 5,
                                           discard = TRUE)

# Plot top potential biomarker miRNAs in CRC
plot_mir_count(crc_biomarker,
               title = "Likely biomarker in CRC")

## ---- fig.show='hold', out.width='50%'-----------------------------------
# Path to PubMed-file
panc_pubmed <- "Pancreas_PubMed.txt"

# Load PubMed-file
df_panc <- read_pubmed(panc_pubmed,
                       topic = "Pancreas") %>% 
  # Keep original research articles
  subset_research() %>% 
  # Extract miRNA names
  extract_mir_df()

# Plot score distribution for biomarker in pancreatic cancer
plot_score_biomarker(df_panc,
                     title = "Biomarker score distribution in pancreatic cancer")

# Identify abstracts reporting miRNAs as biomarker in pancreatic cancer
panc_biomarker <- calculate_score_biomarker(df_panc,
                                           threshold = 6,
                                           indicate = TRUE,
                                           discard = TRUE)

# Plot top potential biomarker miRNAs in pancreatic cancer
plot_mir_count(panc_biomarker,
               title = "Likely biomarker in pancreatic cancer")

## ----fig.show='hold', out.width='50%', fig.align='center'----------------
# Combine CRC and pancreatic cancer data frames
df_crc_panc <- combine_df(df_crc, df_panc)

# Path to miRTarBase (see "References")
target_db <- "miRTarBase_MTI.xlsx"

# Add miRTarBase targets to `df_crc_panc`
df_targets <- join_targets(df_crc_panc,
                           excel_file = target_db,
                           col.pmid.excel = "References (PMID)",
                           col.target.excel = "Target Gene",
                           col.mir.excel = "miRNA",
                           stem_mir_excel = TRUE)

# Plot top targets for miR-21 in CRC and pancreatic cancer
plot_target_mir_scatter(df_targets,
                        mir = "miR-21",
                        col.mir = miRNA_excel,
                        top = 10,
                        filter_for = "target",
                        title = "miRNA-target interaction of miR-21 in CRC and pancreatic cancer")

## ----fig.show='hold', out.width='50%', fig.align='center'----------------
# Plot top 3 miRNA targets in CRC and pancreatic cancer
plot_target_mir_scatter(df_targets,
                        col.mir = miRNA_excel,
                        top = 3,
                        filter_for = "target",
                        title = "Top 3 miRNA targets in CRC and pancreatic cancer")

