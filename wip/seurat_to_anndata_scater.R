# install.packages("devtools")
# devtools::install_github("cellgeni/sceasy")
# install.packages("SeuratObject") # For readRDS
# install.packages("Seurat") # For sceasy::convertFormat
# library(reticulate)
# library(sceasy)  
library(scater)
library(Seurat)
library(SeuratDisk)
library(SeuratData)
library(patchwork)

# InstallData("pbmc3k")
data("pbmc3k.final")
pbmc3k.final
#> An object of class Seurat 
#> 13714 features across 2638 samples within 1 assay 
#> Active assay: RNA (13714 features, 2000 variable features)
#>  2 dimensional reductions calculated: pca, umap
# SaveH5Seurat(pbmc3k.final, filename = "pbmc3k.h5Seurat")
# Convert("pbmc3k.h5Seurat", dest = "h5ad")

# https://mojaveazure.github.io/seurat-disk/articles/convert-anndata.html
seurat_object = readRDS("./data/btc-share/scRNA_rds_Ovarian_Malignant_cluster_object.RDS")
SaveH5Seurat(seurat_object, filename = "scRNA_rds_Ovarian_Malignant_cluster_object.h5Seurat")
Convert("scRNA_rds_Ovarian_Malignant_cluster_object.h5Seurat", dest = "h5ad")