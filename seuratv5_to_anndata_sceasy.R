#!/usr/bin/env Rscript --vanilla
library(reticulate)
library(sceasy)
use_virtualenv("./.venv")
loompy <- reticulate::import('loompy')

# Seurat Object V5 requires some conversion

seurat_obj <- readRDS("data/btc-share/scRNA_rds_Ovarian_Malignant_cluster_object.RDS")
seurat_obj[["RNA"]] <- as(object = seurat_obj[["RNA"]], Class = "Assay")
sceasy::convertFormat(seurat_obj, from="seurat", to="anndata", outFile='scRNA_rds_Ovarian_Malignant_cluster_object.h5ad')

# seurat_obj <- readRDS("data/btc-share/scRNA_rds_Ovarian_nonMalignant_cluster_object.RDS")
# seurat_obj[["RNA"]] <- as(object = seurat_obj[["RNA"]], Class = "Assay")
# sceasy::convertFormat(seurat_obj, from="seurat", to="anndata", outFile='scRNA_rds_Ovarian_nonMalignant_cluster_object.h5ad')
