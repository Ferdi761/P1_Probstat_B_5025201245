#1a
dgeom(x = 3, prob = 0.20)

#1b
mean(rgeom(n = 10000, prob = 0.20) == 3)

#1d histogram
data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = 0.20)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "Geometric(.2)",
       x = "Kegagalan sebelum sukses yang pertama (x)",
       y = "Peluang")

#1e nilai rataan dan varian
rataan <- 1/0.20
paste("Rataan distribusi geometrik: ", rataan)
varian <- (1-0.20) / (0.20)^2
paste("varian distribusi geometrik: ", varian)

