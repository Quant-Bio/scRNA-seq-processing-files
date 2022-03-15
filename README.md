# scRNA-seq-processing-files
A repository that contains files for processing scRNA-seq seurat objects.

_QBStanAnn.Rmd_ is the main Rmarkdown that gets together the other pieces of the analysis.  

_QCSStan.RMD_ is the quality control (QC) and standardization (S) file in which that _seurat_ object is normalized, scaled, and cleared of dead cells and doublets.

_Ann.Rmd_ is a general script to perform cell type annotation of single cell RNA-seq datasets.

_DEx.Rmd_ identifies differential expressed genes in scRNA-seq data.
