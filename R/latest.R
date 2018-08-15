#' latest daily download URL
#'
#' Returns the most recent daily version download URL for a given os and type
#'
#' @param os The operating system
#' @param type One of "server" (default) or "desktop"
#'
#' @return The most recent download URL
#'
#' @export
latest <- function(os, type = "server"){
  list_downloads(os, type)[1]
}
