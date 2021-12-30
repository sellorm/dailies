.onLoad <- function(libname, pkgname) {
  get_dailies_data <<- memoise::memoise(get_dailies_data)
}
