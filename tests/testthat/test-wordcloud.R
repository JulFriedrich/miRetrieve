# library(miRetrieve)
# library(testthat)
#
# Deprecated as this tests creates an output
#
# toy_df <- data.frame("miRNA" = c("miR-30", "miR-30", "miR-30"),
#                      "Abstract" = c("inflammation atherosclerosis test",
#                                     "inflammation diabetes supper",
#                                     "inflammation multiple myeloma cast"),
#                      "PMID" = seq(1:3),
#                      stringsAsFactors = FALSE)
#
#
# wordcloud <- plot_wordcloud(toy_df,
#                             "miR-30",
#                             col.mir = miRNA,
#                             col.abstract = Abstract,
#                             col.pmid = PMID)
#
# ?plot_wordcloud
#
# test_that("Tests wordcloud", {
#     expect_type(wordcloud, "list")
# })
