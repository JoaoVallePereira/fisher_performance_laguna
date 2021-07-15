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

The supplementary material can be reproduced by knitting the R Markdown file in `supplementary_material/supplementary_material.Rmd`. Knitting the supplementary material will run all the analyses in `vallepereiraetal_modeling.R`, export tables and figures to a folder `./output`. The online version of the document was edited in Microsoft Word and figures were fine tuned in Inkscape. 

### 1.3. Instructions

Scripts contain relative paths to source functions and load data. Open an R session and set the working directory to the root of the project for better compatibility with relative paths. The tree below show how files were organized in the project folder:

```bash
fisher_performance_laguna/
├── data/                     # contains the data used in the manuscript
├── R/                        # contains the code to setup run the analyses
├── output/                   # stores tables and figures
└── supplementary_material/   # contains an RMarkdown file to reproduce the supplementary material
```

**Note:** To knit the supplementary material, set the working directory to the main folder of the project instead of the folder *supplementary_material*, where the .rmd is located. 

### This paper was produced using the following software and associated packages:

```bash
R version 4.1.0 (2021-05-18)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 22000)

Matrix products: default

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252   
[3] LC_MONETARY=English_United States.1252 LC_NUMERIC=C                          
[5] LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
 [1] Rcpp_1.0.7        mvtnorm_1.1-2     lattice_0.20-44   tidyr_1.1.3       prettyunits_1.1.1 ps_1.6.0         
 [7] rprojroot_2.0.2   assertthat_0.2.1  digest_0.6.27     utf8_1.2.1        R6_2.5.0          partR2_0.9.1     
[13] MuMIn_1.43.17     backports_1.2.1   stats4_4.1.0      evaluate_0.14     ggplot2_3.3.5     pillar_1.6.1     
[19] rlang_0.4.11      curl_4.3.2        rstudioapi_0.13   minqa_1.2.4       performance_0.7.2 callr_3.7.0      
[25] nloptr_1.2.2.2    Matrix_1.3-3      effectsize_0.4.5  rmarkdown_2.9     ggeffects_1.1.0   splines_4.1.0    
[31] lme4_1.1-27.1     munsell_0.5.0     sjPlot_2.8.9      broom_0.7.8       compiler_4.1.0    modelr_0.1.8     
[37] xfun_0.24         pkgconfig_2.0.3   parameters_0.14.0 pkgbuild_1.2.0    htmltools_0.5.1.1 insight_0.14.2   
[43] tidyselect_1.1.1  tibble_3.1.2      bookdown_0.22     fansi_0.5.0       withr_2.4.2       crayon_1.4.1     
[49] dplyr_1.0.7       MASS_7.3-54       sjmisc_2.8.7      grid_4.1.0        nlme_3.1-152      xtable_1.8-4     
[55] gtable_0.3.0      lifecycle_1.0.0   DBI_1.1.1         magrittr_2.0.1    bayestestR_0.10.0 scales_1.1.1     
[61] datawizard_0.1.0  cli_3.0.0         estimability_1.3  remotes_2.4.0     ellipsis_0.3.2    generics_0.1.0   
[67] vctrs_0.3.8       boot_1.3-28       sjlabelled_1.1.8  tools_4.1.0       glue_1.4.2        purrr_0.3.4      
[73] sjstats_0.18.1    emmeans_1.6.2-1   processx_3.5.2    yaml_2.2.1        colorspace_2.0-2  knitr_1.33       

```

