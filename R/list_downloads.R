#' List available downloads
#'
#' Returns a list of the available downloads for a given os and type combination
#'
#' @param os The operating system
#' @param type One of "server" (default) or "desktop"
#'
#' @return A character vector of download URLs
#'
#' @importFrom rvest %>%
#' @export
list_downloads <- function(os, type = "server") {
  target_url <- get_url(os, type)
  dailies_html <- xml2::read_html(target_url)
  latest_downloads <- dailies_html %>%
    rvest::html_nodes(".filename a") %>%
    rvest::html_attr("href")
  latest_downloads
}
