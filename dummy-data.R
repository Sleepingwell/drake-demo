n <- 1000
age.range <- 18:65
age <- sample(age.range, n, TRUE)
while(length(table(age)) != length(age.range))
  # ensure we have all ages
  age <- sample(18:65, n, TRUE)

ps.in <- (age.range / (max(age.range) + 1))[age - min(age) + 1]
treatment <- factor(sapply(
  ps.in,
  function(ps.in) sample(0:1, 1, FALSE, c(1-ps.in, ps.in))))

dummy.data <- data.frame(
  y=rnorm(n, 10*(age-min(age)) / (max(age) - min(age))),
  age=age,
  treatment=treatment)

write.table(
  dummy.data,
  'test.csv',
  row.names = FALSE,
  col.names = TRUE,
  sep = ',')