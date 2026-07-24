library(tidytuesdayR)

qread <- function(week) {
  week_code <- gsub("-", "", week)

  local_file <- paste("data", week_code, "_cached.rds", sep = "")

  if(file.exists(local_file)) {
      message("Found local file! Loading cached data...")
      data <- readRDS(local_file)
  } else {
      message("Local file not found. Downloading from internet...")
      data <- tidytuesdayR::tt_load(week)
      saveRDS(data, file = local_file)
      message("Data downloaded and saved locally!")
  }

  return(data)
}