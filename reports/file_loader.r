dir   <- "./reports/helpers/"
files <- list.files(dir)

for (file in files) { source(paste(dir, file, sep='')) }