#' ---
#' title: "My great analysis"
#' format: html
#' date: today
#' toc: true
#' ---
#'
#' ### Render report
#' Quarto can render R scripts directly.
#'
#' This is the code you can use to render this report.
#' This will automatically rename it with today's date.
#' Note the `eval: false` which makes sure that rendering this report doesn't
#' run the code to render the report (infinite loop!)

#| eval: false
quarto::quarto_render(
  input = "example_spin.R",
  output_file = paste0("example_spin_", Sys.Date(), ".html")
)

#' ## Setup

#| message: false
library(tidyverse)

#' ## Data Exploration

ggplot(data = mtcars, aes(x = factor(cyl), y = mpg)) +
  theme_bw() +
  geom_violin() +
  geom_point()

#' ## Analysis

m <- lm(mpg ~ factor(cyl), data = mtcars)
summary(m)


#' ## Reproducibility

#' ### Data
#'
#' Data available for download via CSV/Excel buttons (do not use this as data source,
#' but as confirmation and for posterity)

#' <details>
#'   <summary>Show data</summary>
DT::datatable(
  mtcars,
  extensions = 'Buttons',
  options = list(dom = 'Bfrtip', buttons = c('csv', 'excel'))
)
#' </details>

#' ### Packages & Session Info
#'
#' Make sure you [cite](https://ropensci.org/blog/2021/11/16/how-to-cite-r-and-r-packages/) important packages in your manuscripts

#' <details>
#'   <summary>Show packages</summary>
#'
#| results: asis

report::report_packages(prefix = "- ")
report::cite_packages(prefix = "- ")

#+
devtools::session_info()

#' </details>
