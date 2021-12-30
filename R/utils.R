#' Opens the RStudio Dailies website in the default browser
#'
#' @export
browse_website <- function() {
  utils::browseURL("https://dailies.rstudio.com")
}



#' retrieves the dailies data from the API
get_dailies_data <- function() {
  jsonlite::fromJSON("https://dailies.rstudio.com/rstudio/latest/index.json")
}
