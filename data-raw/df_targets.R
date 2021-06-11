df_crc_panc <- rbind(miRetrieve::df_crc, miRetrieve::df_panc)

# Path to miRTarBase (see "References")/Adjust path as necessary
target_db <- "/Users/Julian/Documents/Jupyter/miRetrieve_pkg_files/miRTarBase_MTI.xlsx"

# Add miRTarBase targets to `df_crc_panc`
df_targets <- join_targets(df_crc_panc,
                           excel_file = target_db,
                           col.pmid.excel = "References (PMID)",
                           col.target.excel = "Target Gene",
                           col.mir.excel = "miRNA",
                           stem_mir_excel = TRUE)

usethis::use_data(df_targets, overwrite = TRUE)
