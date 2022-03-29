#!/usr/bin/Rscript
require(rmarkdown)
library(data.table)

# having problem with cached Sys.time()
ts <- format(Sys.time(), '%d%b%Y_%H%M%Z')


output_file <- paste0("QB_SingleCell_qQC_", ts, ".html")
seurat_processed <- paste0("./../results/QB_SingleCell_qQC/seurat_", ts, ".rds")

print("Output file:")
print(output_file)

rmarkdown::render(input="QB_SingleCell_quick_pass_v2.Rmd",
                  output_file = output_file,
                  output_dir = "./../results/QB_SingleCell_qQC/",
                  envir=new.env(),
                  params = list(seurat_processed=seurat_processed))


