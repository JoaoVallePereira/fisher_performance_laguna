# INSTALL/LOAD PACKAGES ----
### Install/Load packages required 
source("./R/setup.R")

### LOAD DATA ----
data.fisher.2018.2019 <- readRDS(file = "./data/data_fisher_modeling.rds")

# check data
head(data.fisher.2018.2019)
str(data.fisher.2018.2019)

### Descriptive results ====

# Net casting variables
summary(data.fisher.2018.2019$net_area)
sd(data.fisher.2018.2019$net_area)

summary(data.fisher.2018.2019$net_angle)
sd(data.fisher.2018.2019$net_angle)

summary(data.fisher.2018.2019$net_dist)
sd(data.fisher.2018.2019$net_dist)

summary(data.fisher.2018.2019$net_dist_fisher)
sd(data.fisher.2018.2019$net_dist_fisher)

summary(data.fisher.2018.2019$net_dist_1stnet)
sd(data.fisher.2018.2019$net_dist_1stnet)

summary(data.fisher.2018.2019$fisher_reaction)
sd(data.fisher.2018.2019$fisher_reaction)

# Environmenal variables

summary(data.fisher.2018.2019$wind_direc)

summary(data.fisher.2018.2019$wind_speed)
sd(data.fisher.2018.2019$wind_speed)

summary(data.fisher.2018.2019$water_temp)
sd(data.fisher.2018.2019$water_temp)

summary(data.fisher.2018.2019$tide_height)
sd(data.fisher.2018.2019$tide_height)

summary(data.fisher.2018.2019$obs_tide_direc)


### MODELLING FISHING OUTCOMES ====

# fit M1 ----
M1 <- glmmTMB(net_catch_fish ~
                wind_direc +
                wind_speed +
                water_temp +
                tide_height+
                obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                net_dist_1stnet +
                year +
                (1|day), 
              data=data.fisher.2018.2019, 
              family= binomial(link = "logit"))

# check collinearity
performance::check_collinearity(M1)

# check summary and drop variables
summary(M1)
drop1(M1, test = "Chisq") # remove obs_tide_direc

# fit M2 ----
M2 <- glmmTMB(net_catch_fish ~
                wind_direc +
                wind_speed +
                water_temp + 
                tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                net_dist_1stnet +
                year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M2)
drop1(M2, test = "Chisq") # remove net_dist_1stnet

# fit M3 ----
M3 <- glmmTMB(net_catch_fish ~
                wind_direc +
                wind_speed +
                water_temp + 
                tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M3)
drop1(M3, test="Chisq") # remove year

# fit M4 ----
M4 <- glmmTMB(net_catch_fish ~
                wind_direc +
                wind_speed +
                water_temp +
                tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M4)
drop1(M4, test="Chisq") # remove water_temp

# fit M5 ----
M5 <- glmmTMB(net_catch_fish ~
                wind_direc +
                wind_speed +
                # water_temp + 
                tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M5)
drop1(M5, test = "Chisq") # remove wind_speed

# fit M6 ----
M6 <- glmmTMB(net_catch_fish ~
                wind_direc +
                # wind_speed +
                # water_temp + 
                tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M6)
drop1(M6, test = "Chisq") # remove tide_height

# fit M7 ----
M7 <- glmmTMB(net_catch_fish ~
                wind_direc +
                # wind_speed +
                # water_temp + 
                # tide_height +
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M7)
drop1(M7, test = "Chisq") # remove wind_direc

# fit M8 ----
M8 <- glmmTMB(net_catch_fish ~
                # wind_direc +
                # wind_speed +
                # water_temp + 
                # tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data=data.fisher.2018.2019, 
              family= binomial(link = "logit"))

# check summary and drop variables
summary(M8)
drop1(M8, test = "Chisq") # remove net_angle

# fit M9 ----
M9 <- glmmTMB(net_catch_fish ~
                # wind_direc +
                # wind_speed +
                # water_temp + 
                # tide_height+
                # obs_tide_direc +
                fisher_reaction +
                net_area +
                # net_angle +
                net_dist +
                net_dist_fisher +
                # net_dist_1stnet +
                # year +
                (1|day), 
              data = data.fisher.2018.2019, 
              family = binomial(link = "logit"))

# check summary and drop variables
summary(M9)
drop1(M9, test = "Chisq") # remove fisher_reaction

# fit M10 ----
M10 <- glmmTMB(net_catch_fish ~
                 # wind_direc +
                 # wind_speed +
                 # water_temp + 
                 # tide_height+
                 # obs_tide_direc +
                 # fisher_reaction +
                 net_area +
                 # net_angle +
                 net_dist +
                 net_dist_fisher +
                 # net_dist_1stnet +
                 # year +
                 (1|day), 
               data = data.fisher.2018.2019, 
               family = binomial(link = "logit"))

# check summary and drop variables
summary(M10)
drop1(M10, test = "Chisq") # remove net_dist_fisher

# fit M11 -----
M11 <- glmmTMB(net_catch_fish ~
                 # wind_direc +
                 # wind_speed +
                 # water_temp + 
                 # tide_height+
                 # obs_tide_direc +
                 # fisher_reaction +
                 net_area +
                 # net_angle +
                 net_dist +
                 # net_dist_fisher +
                 # net_dist_1stnet +
                 # year +
                 (1|day), 
               data = data.fisher.2018.2019, 
               family = binomial(link = "logit"))

# check summary and drop variables
summary(M11)
drop1(M11, test = "Chisq") # remove net_area

# fit M12 ----
M12 <- glmmTMB(net_catch_fish ~
                 # wind_direc +
                 # wind_speed +
                 # water_temp + 
                 # tide_height+
                 # obs_tide_direc +
                 # fisher_reaction +
                 # net_area +
                 # net_angle +
                 net_dist +
                 # net_dist_fisher +
                 # net_dist_1stnet +
                 # year +
                 (1|day), 
               data = data.fisher.2018.2019, 
               family = binomial(link = "logit"))

# check summary 
summary(M12)

# Intercept only model ----
M0 <- glmmTMB(net_catch_fish ~ (1|day), 
               data = data.fisher.2018.2019, 
               family = binomial(link = "logit"))

# Model selection table ====
all_models <- MuMIn::model.sel(M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12,
                               rank = "AICc")

all_models$Model <- rownames(all_models)
colnames(all_models) <- gsub(colnames(all_models), pattern = "cond|\\(|\\)", replace = "")

# Export table 1 ----
sjPlot::tab_model(M10, 
                  file = "./output/table_01.html",
                  show.se = T, 
                  show.est = T, show.p = T, show.ci= F, 
                  show.ngroups = T, show.re.var = F, 
                  show.icc = F, show.stat = T, show.std = T, 
                  string.stat = "Z value", string.p = "P value", p.style = "numeric", 
                  order.terms = c(1,3,2,4))

# table S1
model_sel_table <- all_models %>% 
  as.data.frame() %>% 
  dplyr::mutate_if(is.numeric, round, digits = 3) %>% 
  dplyr::select(Model,
                "Intercept" = Int, 
                "Reaction time" = fisher_reaction,
                "Net angle" = net_angle,
                "Net area" = net_area,
                "Net distance to the dolphin" = net_dist,
                "Distance between nets" = net_dist_1stnet,
                "Casting distance" = net_dist_fisher,
                "Tide direction" = obs_tide_direc,
                "Tide height" = tide_height,
                "Water temperature" = water_temp,
                "Wind direction" = wind_direc,
                "Wind speed" = wind_speed,
                "Year" = year,
                df,
                "log-likelihood" = logLik,
                AICc,
                "Delta AICc" = delta,
                weight)


# VALIDATING MODEL ASSUMPTIONS ====

# residuals uniformity and heteroscedasticity 
simulationOutput <- simulateResiduals(fittedModel = M10, n = 1000, seed = 1234)

# Random effects 
sjPlot::plot_model(M10, type = "diag")

# R2 AND PARTIAL R2 ====

# check marginal and coditional R2 ----
m10_r2_marginal <- MuMIn::r.squaredGLMM(M10)[, 'R2m']
m10_r2_conditional <- MuMIn::r.squaredGLMM(M10)[, 'R2c']

# Part R2 -----
m10glmer <- lme4::glmer(formula = M10$modelInfo$allForm$formula,
                        family = binomial(link = "logit"),
                        data = data.fisher.2018.2019)

# marginal
set.seed(1234)
m10_partr2_marginal <- partR2(m10glmer,  
                              partvars = c("net_area", "net_dist", "net_dist_fisher"), 
                              R2_type = "marginal", 
                              nboot = 1000, CI = 0.95, parallel = F, max_level = 1)

# Rename vars
for (i in c("R2", "SC", "BW", "IR2")) {
  
  m10_partr2_marginal[[i]]$term[which(m10_partr2_marginal[[i]]$term == 'net_area')] <- "Net area"
  m10_partr2_marginal[[i]]$term[which(m10_partr2_marginal[[i]]$term == 'net_dist')] <- "Net distance to the dolphin"
  m10_partr2_marginal[[i]]$term[which(m10_partr2_marginal[[i]]$term == 'net_dist_fisher')] <- "Casting distance"

  }

# tables
m10_partr2_marginal$IR2

# forest plots
m10_r2 <- partR2::forestplot(m10_partr2_marginal, type = "R2", line_size = 0.7, text_size = 12, point_size = 3)
m10_sc <- partR2::forestplot(m10_partr2_marginal, type = "SC", line_size = 0.7, text_size = 12, point_size = 3)
m10_r2_bw <- partR2::forestplot(m10_partr2_marginal, type = "BW", line_size = 0.7, text_size = 12, point_size = 3)
m10_r2_ir2 <- partR2::forestplot(m10_partr2_marginal, type = "IR2", line_size = 0.7, text_size = 12, point_size = 3)

# export table R2
write.table(as.data.frame(m10_partr2_marginal$R2), sep = ",", file = "./output/tab_partR2.txt")

### PLOT AND EXPORT FIGURES ====

# Export figure 1 ----
source("./R/figure_01.R")

# Export figure 2 ----
source("./R/figure_02.R")