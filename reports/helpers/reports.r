report.visits <- function(ga_id, start, end) {
  dims <- with(dimensions, paste(date, host, sep=','))

  data <- ga$getData(
    ga_id, start, end,
    dimensions = dims,
    metrics    = query.visits,
    start      = 1,
    max        = 1000000
  )
}