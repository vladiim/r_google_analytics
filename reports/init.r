source("./reports/setup.r")

# adi.client    <- Sys.getenv('ADI_GA_API_C')
name   = 'adi'
client = getClient(name)
secret = getSecret(name)
aid.db = getDB(name)

ga.connect(client, secret)

# ids <- ga$getProfiles()[1]

# for (i in 1:nrow(ids)) { 
#   print(i)
# }

id <- '66466136'

hostData <- getData.host(id, '2013-11-01', '2014-01-01')

# DB

# library(RODBC)

# server <- aid.db
# GA     <- odbcDriverConnect(server)
# sqlDrop(aid.table)
# sqlSave(GA, data, db.table, rownames=FALSE, verbose=FALSE,
#   varTypes= c( app_id="int", date="int", hostname="char", visitors="int",
#                 visits="int", newVisits="int", bounces="int", pageviews="int",
#                 timeOnPage="varchar(50)", timeOnSite="varchar(50)", avgtimeonSite="varchar(50)")