#' Get the dailies page URL
#'
#' Returns the URL of the dailies page for a given os and type combination.
#'
#' The following os and type combinations are supported:\cr
#' type = "server"
#' \itemize{
#' \item ubuntu (currently v16 and up)
#' \item debian
#' \item redhat
#' \item suse
#' }
#' type = "desktop"
#' \itemize{
#' \item windows
#' \item macos
#' \item ubuntu
#' \item fedora
#' }
#'
#' @param os The operating system
#' @param type One of "server" (default) or "desktop"
#'
#' @return The URL of the dailies page
#'
#' @export
get_url <- function(os, type = "server") {
  server_oses <- list(
    ubuntu = "https://dailies.rstudio.com/rstudioserver/oss/ubuntu/x86_64/",
    debian = "https://dailies.rstudio.com/rstudioserver/oss/debian9/x86_64/",
    redhat = "https://dailies.rstudio.com/rstudioserver/oss/redhat6/x86_64/",
    suse = "https://dailies.rstudio.com/rstudioserver/oss/suse/x86_64/"
    )
  desktop_oses <- list(
    windows = "https://dailies.rstudio.com/rstudio/oss/windows/",
    macos = "https://dailies.rstudio.com/rstudio/oss/mac/",
    ubuntu = "https://dailies.rstudio.com/rstudio/oss/xenial/x86_64/",
    fedora = "https://dailies.rstudio.com/rstudio/oss/fedora/x86_64/"
    )
  url <- switch(type,
    server = server_oses[[os]],
    desktop = desktop_oses[[os]],
    stop("\"type\" needs to be on of \"server\" or \"desktop\"")
    )
  if (is.null(url)) {
    stop("bad combination of \"os\" and \"type\"")
  }
  url
}
