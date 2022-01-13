# scRNA-seq-processing-files
A repository that contains files for processing scRNA-seq seurat objects.

_QB_single_cell_analysis.Rmd_ is the main Rmarkdown that gets together the other pieces of the analysis.  

_QCS_01_05_2022.RMD_ is the quality control (QC) and standardization (S) file in which that _seurat_ object is normalized, scaled, and cleared of dead cells and doublets.

_Anno_01_06_2022.Rmd_ is a general script to perform cell type annotation of single cell RNA-seq datasets.

_DEx_01_07__2022.Rmd_ identifies differential expressed genes in scRNA-seq data.