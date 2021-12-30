#' latest daily download URL
#'
#' Returns the most recent daily version download URL for a given os and type
#' The options available are derived directly from the API.
#'
#' @param os The operating system
#' @param type One of "desktop" (default) or "server"
#'
#' @return The URL of the latest daily build
#'
#' @export
latest <- function(os, type = "desktop") {
  dailies_data <- get_dailies_data()
  if (! type %in% names(dailies_data$products)) {
    stop("Incorrect type. Choose from ",
         paste(
           names(dailies_data$products),
           collapse = ", "))
  }

  if (! os %in% names(dailies_data$products[[type]][["platforms"]])) {
    stop("Incorrect OS. Choose from ",
         paste(
           names(dailies_data$products[[type]][["platforms"]]),
           collapse = ", "))
  }

  dailies_data$products[[type]][["platforms"]][[os]][["link"]]
}
