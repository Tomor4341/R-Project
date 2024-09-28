dat <- USArrests %>%
  scale() %>%
  head(6)

str(dat)

dist(dat, method = "euclidean")
dist(dat, method = "manhattan")
dist(dat, method = "maximum")

cor(dat)

