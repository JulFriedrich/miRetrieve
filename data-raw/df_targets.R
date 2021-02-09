#Adjust path as necessary
panc_pubmed <- "Pancreas_PubMed.txt"

# Load PubMed-file
df_panc <- read_pubmed(panc_pubmed,
                       topic = "Pancreas") %>%
    # Keep original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()


crc_pubmed <- "CRC_PubMed.txt"

#Adjust path as necessary
df_crc <- read_pubmed(crc_pubmed,
                      topic = "CRC") %>%
    # Keep abstracts of original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()

df_crc_panc <- combine_df(df_crc, df_panc)

# Path to miRTarBase (see "References")/Adjust path as necessary
target_db <- "miRTarBase_MTI.xlsx"

# Add miRTarBase targets to `df_crc_panc`
df_targets <- join_targets(df_crc_panc,
                           excel_file = target_db,
                           col.pmid.excel = "References (PMID)",
                           col.target.excel = "Target Gene",
                           col.mir.excel = "miRNA",
                           stem_mir_excel = TRUE)

usethis::use_data(df_targets, overwrite = TRUE)
