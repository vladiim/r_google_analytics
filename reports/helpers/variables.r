getClient <- function(name) {
  name <- toupper(name)
  Sys.getenv(paste(name, '_GA_API_C', sep=''))
}

getSecret <- function(name) {
  name <- toupper(name)
  Sys.getenv(paste(name, '_GA_API_P', sep=''))
}

getDB <- function(name) {
  name <- toupper(name)  
  Sys.getenv(paste(name, '_AWS_DB', sep=''))
}