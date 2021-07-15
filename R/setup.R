# SETUP

### Install/Load packages required ----
if(!require(tidyverse)){install.packages("tidyverse");library(tidyverse)}
if(!require(car)){install.packages("car");library(car)}
if(!require(glmmTMB)){install.packages("glmmTMB");library(glmmTMB)}
if(!require(DHARMa)){install.packages("DHARMa");library(DHARMa)}
if(!require(MASS)){install.packages("MASS");library(MASS)}
if(!require(MuMIn)){install.packages("MuMIn");library(MuMIn)}
if(!require(performance)){install.packages("performance");library(performance)}
if(!require(partR2)){install.packages("partR2");library(partR2)}
if(!require(future)){install.packages("future");library(future)}
if(!require(lme4)){install.packages("lme4");library(lme4)}
if(!require(patchwork)){install.packages("patchwork");library(patchwork)}
if(!require(gghalves)){install.packages("gghalves");library(gghalves)}
if(!require(colorblindr)){install.packages("colorblindr");library(colorblindr)}
if(!require(sjPlot)){install.packages("sjPlot");library(sjPlot)}
if(!require(jtools)){install.packages("jtools");library(jtools)}
if(!require(cowplot)){install.packages("cowplot");library(cowplot)}
if(!require(bookdown)){install.packages("bookdown");library(bookdown)}


### Function to get same number of breaks ----
equal_breaks <- function(n = 4, s = 0.05, ...){
  function(x){
    # rescaling
    d <- s * diff(range(x)) / (1+2*s)
    seq(min(x)+d, max(x)-d, length = n)
  }
}


### ggplot theme ----
theme_fisher <- theme(
  panel.background = element_blank(),
  panel.border = element_rect(colour = 'black', fill = NA),
  panel.grid = element_blank(),
  axis.ticks = element_line(colour = 'black'),
  axis.ticks.length = unit(4, "pt"),
  legend.position = 'none',
  text = element_text(size = 12, colour = 'black'),
  strip.placement = 'outside'
)
