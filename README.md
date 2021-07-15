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
    * 1.1. Data and script to reproduce the analysis
    * 1.2. Supplementary material
    * 1.3. Instructions

### 1.1. Data and script to reproduce the analysis

- `setup.R`: This file contains the code to install and load the packages required to run the analyses in `vallepereiraetal_modeling.R`.

- `vallepereiraetal_modeling.R`: This file contains the code to run the analyses of the manuscript.

- `data_fisher_modeling.rds`: This file contains the data to run the analyses in the file `vallepereiraetal_modeling.R`. The data frame contains the following information: 

| Variable        | Class              | Description                          |
|-----------------|--------------------|--------------------------------------|
| water_temp      | Numeric            | Water temperature in degrees Celsius |
| wind_speed      | Numeric            | Wind speed in m/s                    |
| wind_direc      | Factor (2 levels)  | Northern/Southern                    |
| tide_height     | Numeric            | Tide height in centimeters (cm)      |
| obs_tide_direc  | Factor (2 levels)  | Ebb/Flood                            |
| fisher_reaction | Numeric            | Time in seconds                      |
| net_area        | Numeric            | Net area in squared meters           |
| net_angle       | Numeric            | Angle between net and dolphin heading|
| net_dist        | Numeric            | Net distance to the dolphin in meters|
| net_dist_fisher | Numeric            | Net casting distance in meters       |
| net_dist_1stnet | Numeric            | Net distance to 1st net in meters    |
| net_catch_fish  | Integer            | Successful (1) casts or not (0)      |
| year            | Factor (2 levels)  | Year 2018 or 2019                    |
| day             | Factor (23 levels) | Sampling date (yyyy-mm-dd)           |

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

**Note:** To knit the supplementary material, set the working directory to the main folder of the project instead of the folder *supplementary_material*, where the .rmd is located. 

### This paper was produced using the following software and associated packages:

