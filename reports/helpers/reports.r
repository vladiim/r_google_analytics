getData.host <- function(ga_id, start, end) {
  dims <- with(dimensions, paste(date, host, sep=','))

  ga$getData(
    ga_id, start, end,
    dimensions = dims,
    metrics    = filter.host,
    start      = 1,
    max        = 1000000
  )
}