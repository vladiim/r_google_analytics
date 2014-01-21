# source("/Users/vlad.ivanovic/code/r_google_analytics/reports/helpers/content_page.r")

# theknot data <- read.csv("./analytics/content_20130119_20140119.csv", header=TRUE, sep=',', stringsAsFactors=FALSE)

library(ggplot2)

exact.pageDetails <- function(page) {
  d <- data[data$Page == page, ]
  keyStats(d)
}

like.pageDetails <- function(page) {
  d <- data[grepl(page, data$Page), ]

  data.frame(
    uv     = sum(d$Unique.Pageviews),
    percUV = sum(d$Unique.Pageviews) / 16875842,
    enter  = sum(d$Entrances),
    npages = nrow(d)
  )
}

totalUVs <- function() {
  sum(data$Unique.Pageviews)
}

keyStats <- function(dat) {
  data.frame(
    uv     = dat$Unique.Pageviews,
    percUV = (dat$Unique.Pageviews / totalUVs() ),
    bounce = dat$Bounce.Rate,
    exit   = dat$X..Exit,
    enter  = dat$Entrances,
    time   = dat$Avg..Time.on.Page
  )
}

perc.uvs <- function(min, max) {
  total.uv <- sum(data$Unique.Pageviews)
  range    <- data[min:max,]
  range.uv <- sum(range$Unique.Pageviews)
  data.frame(
    range.uv = range.uv,
    perc.uvs = (range.uv/total.uv)*100
  )
}

# uv.pages <- data.frame(one=1:10, two=11:65)