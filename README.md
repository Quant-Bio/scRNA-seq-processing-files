# scRNA-seq-processing-files
A repository that contains files for processing scRNA-seq seurat objects.

_QB_single_cell_analysis.Rmd_ is the main Rmarkdown that gets together the other pieces of the analysis.  

_QCS_01_05_2022.RMD_ is the quality control (QC) and standardization (S) file in which that _seurat_ object is normalized, scaled, and cleared of dead cells and doublets.

_Anno_01_06_2022.Rmd_ is a general script to perform cell type annotation of single cell RNA-seq datasets.

_DEx_01_07__2022.Rmd_ identifies differential expressed genes in scRNA-seq data.

## Installation notes

### `systemfonts`

For installing with R 4.1.2 on Ubuntu 20.0.4, in order for the package `systemfonts` to be installed, you must install font config as follows:

```
sudo apt -y install libfontconfig1-dev
```
Although this will solve the installation of fontconfig, R may not be able to find the path where the needed `freetype2.pc` is.  To solve, run `sudo find` and add the resulting path to your `$PATH` variable

```
sudo find . -type f | grep "freetype2.pc"
```

`./usr/lib/x86_64-linux-gnu/pkgconfig/freetype2.pc`

```
export PATH=/usr/lib/x86_64-linux-gnu/pkgconfig/:$PATH
```

### `ggpubr`
This issue is related to the nloptr error when installing `ggpubr`
You have to install Cmake on Ubuntu<br>
https://vitux.com/how-to-install-cmake-on-ubuntu/<br>
Code copied for convenience here:<br>
```
sudo apt-get install build-essential libssl-dev
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz
tar -zxvf cmake-3.20.0.tar.gz
cd cmake-3.20.0
```

```
./bootstrap
```

```
make
```

```
sudo make install
```
