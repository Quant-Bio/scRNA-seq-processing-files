# scRNA-seq-processing-files

## QBStanAnn
A repository that contains files for processing scRNA-seq seurat objects.

`QBStanAnn.Rmd` is the main Rmarkdown that calls the `QC`, `Annotation`, and `Differential Expression` scripts.  

`QCSStan.RMD` is the quality control (QC) and standardization (S) file in which that _seurat_ object is normalized, scaled, and cleared of dead cells and doublets.

`Ann.Rmd` is a general script to perform cell type annotation of single cell RNA-seq datasets.

`DEx.Rmd` identifies differential expressed genes in scRNA-seq data.

## QB_SingleCell_quickpass
`QB_SingleCell_quickpass.Rmd` is a file for quick processing and QC of new data sets.  Because this script downsamples the cells, it should run in about 15-20 minutes.

### Features included
- support for mouse and human
- doublet detection
- doublet filtering
- multiple filtering options (including hard filters and MAD)
- standard or SCT transformation
- HPCA and ImmGen references
    - for mouse, HPCA can be converted to mouse genes via the "biomart" method or by "lowercasing" it.
- Louvain, Louvain2, Leiden or SLM clustering algorithms
- multiple cluster resolutions
