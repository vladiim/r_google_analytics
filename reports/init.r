source("./reports/setup.r")

adi.client <- Sys.getenv('ADI_GA_API_C')
adi.secret <- Sys.getenv('ADI_GA_API_P')
adi.id     <- Sys.getenv('ADI_GA_ID')

ga.connect(adi.client, adi.secret)

report.visits(adi.id, '2013-11-01', '2014-01-01')