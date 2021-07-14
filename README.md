# README #

## Author, maintainer and contact

**João V. S. do Valle-Pereira**: joao.vallepereira@gmail.com       

*Laboratório de Mamíferos Aquáticos, Universidade Federal de Santa Catarina, CCB/ECZ, Florianópolis, SC 88010-970, Brazil.*       


--------------------------------------
## Description

This repository includes the R script to reproduce the analyses and the supplementary material of the manuscript:     

Valle-Pereira J.V.S, Cantor M., Machado A.M.S., Farine D.R., Daura-Jorge F.G. 2021. Behavioural traits influence foraging success of artisanal net-casting fishers who interact with wild dolphins. ICES Journal of Marine Science.  

## Contents
1. Files and directions
	1. Data and script to reproduce the analysis
	2. Supplementary material
	3. Instructions


### 1.1. Data and script to reproduce the analysis

**vallepereiraetal_modeling.R**

Summary: This file contains the R Script to run the analyses of the manuscript.

**setup.R**

Summary: This file contains the R Script to run the custom functions required in the file vallepereiraetal_modeling.R.

**data_fisher_modeling.rds**

Summary: This file contains the data to run the analyses in the file vallepereiraetal_modeling.R.

### 1.2. Supplementary material

The supplementary material can be reproduced by knitting the R Markdown file in `supplementary_material/supplementary_material.Rmd`.

### 1.3. Instructions

Scripts contain relative paths to source functions and load data. Open an R session and set the working directory to the root of the project for better compatibility with relative paths.

After opening the **vallepereiraetal_modeling.R** script you should run the code:

```r
source("./R/setup.R")
```
to install and load the required packages.

and run the code:

```r
data.fisher.2018.2019 <- readRDS(file = "./data/data_fisher_modeling.rds")
```
to load the fisher' behavior and environmental data necessary to reproduce the analyses.

Run the code to follow de modelling procedures.

### This paper was produced using the following software and associated packages:

      

