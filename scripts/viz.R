library(summarytools)
library(purrr)

viz <- function(data) {
  iwalk(data, function(df, name) {
    cat("\n\n### ", name, " (" , nrow(df), "," , ncol(df), ")\n", sep = "")

    dfSummary(
      df,
      plain.ascii = FALSE,
      style = "grid",
      graph.magnif = 0.82,
      varnumbers = FALSE,
      valid.col = FALSE,
      temp.img.dir = "/tmp",
      round.digits = 2,
      headings = FALSE,
      display.labels = FALSE
    ) |>
      print()
  })
}