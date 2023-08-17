#!/usr/bin/env Rscript --vanilla
library("reticulate")
args=commandArgs(trailingOnly=TRUE)
cat(args)
loompy <- reticulate::import('loompy')
