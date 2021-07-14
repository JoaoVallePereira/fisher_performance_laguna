###  PREDICTING ====
M10_netdist <- as.data.frame(jtools::make_predictions(M10, pred = "net_dist"))
M10_netarea <- as.data.frame(jtools::make_predictions(M10, pred = "net_area"))
M10_netdistfisher <- as.data.frame(jtools::make_predictions(M10, pred = "net_dist_fisher"))


### PLOT PREDICTIONS =====

# Net distance ----
p1 <- ggplot(M10_netdist, aes(x = net_dist, y = net_catch_fish)) +
  geom_ribbon(aes(ymin = ymin, ymax = ymax), fill = "grey80")  +
  geom_line(colour = "black") +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish > 0), ],
           aes(x = net_dist, y = net_catch_fish),
           colour = "#56B4E9", sides = 't') +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish < 1), ],
           aes(x = net_dist, y = net_catch_fish),
           colour = "#E69F00", sides = 'b') +
  scale_x_continuous(limits = c(0,NA), breaks = c(0, 20, 40, 60)) +
  labs(x = "Net distance to the \ndolphin", y = "Fishing outcome") +
  theme_fisher

# Net area ----
p2 <- ggplot(M10_netarea, aes(x = net_area, y = net_catch_fish)) +
  geom_ribbon(aes(ymin = ymin, ymax = ymax), fill = "grey80")  +
  geom_line(colour = "black") +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish > 0), ],
           aes(x = net_area, y = net_catch_fish),
           colour = "#56B4E9", sides = 't') +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish < 1), ],
           aes(x = net_area, y = net_catch_fish),
           colour = "#E69F00", sides = 'b') +
  scale_x_continuous(limits = c(0,NA), breaks = c(0, 30, 60, 90)) +
  labs(x = "Net area", y = "") +
  theme_fisher

# Net distance fishers ----
p3 <- ggplot(M10_netdistfisher, aes(x = net_dist_fisher, y = net_catch_fish)) +
  geom_ribbon(aes(ymin = ymin, ymax = ymax), fill = "grey80")  +
  geom_line(colour = "black") +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish > 0), ],
           aes(x = net_dist_fisher, y = net_catch_fish),
           colour = "#56B4E9", sides = 't') +
  geom_rug(inherit.aes = FALSE, data = M10$frame[which(M10$frame$net_catch_fish < 1), ],
           aes(x = net_dist_fisher, y = net_catch_fish),
           colour = "#E69F00", sides = 'b') +
  scale_x_continuous(limits = c(0,NA), breaks = c(0, 5, 10, 15)) +
  labs(x = "Casting distance", y = "") +
  theme_fisher 

# COMBINE PLOTS ----
predicted_plot <- cowplot::plot_grid(p1,p2,p3, ncol = 3, 
                                     align = "hv",
                                     label_fontface = "plain",
                                     label_size = 10,  hjust = 0,
                                     labels = c("(a)", "(b)", "(c)"))

# EXPORT ----
ggsave(filename = "./output/figure_02.pdf", device = 'pdf',
       plot = predicted_plot,
       height = 90, width = 170, units = "mm")
