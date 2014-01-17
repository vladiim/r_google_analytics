query.visits <- with( metrics, paste(visitors, visits,
  newVisits, bounces, pageViews, timeOnPage, timeOnSite, 
  avgTimeOnSite, sep=","))