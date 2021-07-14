# README #

## Author, maintainer and contact

**João V. S. do Valle-Pereira**[![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0002-1880-9495): joao.vallepereira@gmail.com       

*Laboratório de Mamíferos Aquáticos, Universidade Federal de Santa Catarina, CCB/ECZ, Florianópolis, SC 88010-970, Brazil.*       


--------------------------------------
## Description

This repository includes the R script to reproduce the analyses and the supplementary material of the manuscript:     

Valle-Pereira, J.V.S [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0002-1880-9495); Cantor, M. [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0002-0019-5106), Machado, A.M.S. [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0001-6252-6890); Farine, D.R. [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0003-2208-7613); Daura-Jorge, F. G.  [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](http://orcid.org/0000-0003-2923-1446). Behavioural traits influence foraging success of artisanal net-casting fishers who interact with wild dolphins. *In prep*.


## Contents

1. Files and directions
    1.1. Data and script to reproduce the analysis
    1.2. Supplementary material
    1.3. Instructions

### 1.1. Data and script to reproduce the analysis

- `setup.R`: This file contains the code to install and load the packages required to run the analyses in `vallepereiraetal_modeling.R`.

- `data_fisher_modeling.rds`: This file contains the data to run the analyses in the file `vallepereiraetal_modeling.R`.

- `vallepereiraetal_modeling.R`: This file contains the code to run the analyses of the manuscript.


### 1.2. Supplementary material

The supplementary material can be reproduced by knitting the R Markdown file in `supplementary_material/supplementary_material.Rmd`.

### 1.3. Instructions

Scripts contain relative paths to source functions and load data. Open an R session and set the working directory to the root of the project for better compatibility with relative paths. The tree below show how files were organized in the project folder:

```bash
fisher_performance_laguna/
├── data/                     # contains the data used in the manuscript
├── R/                        # contains the code to setup run the analyses
└── supplementary_material/   # contains an RMarkdown file to reproduce the supplementary material
```

### This paper was produced using the following software and associated packages:

