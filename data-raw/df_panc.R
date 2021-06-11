# Path to PubMed-file
panc_pubmed <- "Pancreas_PubMed.txt"

# Load PubMed-file
df_panc_mir <- read_pubmed(panc_pubmed,
                       topic = "Pancreas") %>%
    # Keep original research articles
    subset_research() %>%
    # Extract miRNA names
    extract_mir_df()

# Subset data frame to miR-21
df_panc_21 <- df_panc_mir %>%
    subset_mir("miR-21")

# Randomly sample 250 rows
df_panc_sample <- df_panc_mir %>%
    dplyr::slice_sample(n = 250)

# Combine data frames and keep distinct rows
df_panc <- rbind(df_panc_21, df_panc_sample) %>%
    dplyr::distinct

usethis::use_data(df_panc, overwrite = TRUE)
