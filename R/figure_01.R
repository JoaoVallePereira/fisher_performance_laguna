# Load data ----
data.fisher.2018.2019 <- readRDS(file = "./data/data_fisher_modeling.rds")

# Reshape and rename variables ----
data.fisher.2018.2019$net_catch_fish <- as.factor(data.fisher.2018.2019$net_catch_fish)

sub_data.fisher <- data.fisher.2018.2019 %>% 
  dplyr::select(net_area, net_angle, net_dist, net_dist_fisher, net_dist_1stnet, fisher_reaction, net_catch_fish) %>% 
  reshape2::melt() %>% 
  dplyr::mutate(variable = factor(variable,
                                  levels = c("net_area", "net_angle", "net_dist", 
                                             "net_dist_fisher", "net_dist_1stnet", "fisher_reaction"),
                                  labels = c("(a) Net area (m^2)",
                                             "(b) Net angle(^o)",
                                             "(c) Net distance to \n the cue (m)",
                                             "(d) Net distance to \n the fisher (m)",
                                             "(e) Net distance to \n the fisher net (m)",
                                             "(f) Fisher reaction (min)")),
                net_catch_fish = factor(net_catch_fish,
                                        levels = c(0, 1),
                                        labels = c("Unsuccessful \ncasts", "Successful \ncasts")))

# plot -----
fig1_portrait <- ggplot(data = sub_data.fisher, aes(x = net_catch_fish, y = value)) +
  gghalves::geom_half_violin(aes(fill = net_catch_fish),
                             adjust = 1.5, alpha = 0.25, colour = NA) +
  gghalves::geom_half_boxplot(aes(fill = net_catch_fish),
                              position = position_dodge(), 
                              outlier.shape = NA, alpha = 0.5, lwd= 0.4, trim = TRUE,
                              width = 0.2, colour = "black") +
  gghalves::geom_half_point(aes(colour = net_catch_fish),
                            alpha = 0.25,
                            position = position_jitter(width = .05),
                            size = 0.75, shape = 20) +
  colorblindr::scale_colour_OkabeIto(darken = 0) +
  colorblindr::scale_fill_OkabeIto(darken = 0) +
  facet_wrap( ~ variable, scales = 'free_y', ncol = 1, strip.position = "left") +
  scale_y_continuous(breaks = scales::pretty_breaks(4), expand = c(0.05, 0), limits = c(0, NA)) +
  labs(x = "", y = "") +
  theme_fisher

# export ----
ggsave(filename = "./output/figure-01_portrait-left-out_v2.pdf", device = 'pdf',
       plot = fig1_portrait,
       height = 200, width = 80, units = "mm")
