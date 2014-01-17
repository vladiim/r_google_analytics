# Load all libraries
library(rga)

# Load all helper files
source("./reports/file_loader.r")

# Connect to GA
ga.connect <- function(client, secret) {
  rga.open( instance = "ga",
            where    = "~/ga.rga")

  rga.open( instance      = "ga",
            client.id     = ga.client, 
            client.secret = ga.secret)
}