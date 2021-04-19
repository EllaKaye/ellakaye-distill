# to use any of these functions in distill articles on this website, call `source(file.path("R", "functions.R"))` at the top of the .Rmd file

# copied from https://github.com/jhelvy/jhelvy.com
# for more details, see https://www.jhelvy.com/posts/2021-03-25-customizing-distill-with-htmltools-and-css/
make_icon <- function(icon) {
  return(htmltools::tag("i", list(class = icon)))
}

# copied from https://github.com/jhelvy/jhelvy.com
# for more details, see https://www.jhelvy.com/posts/2021-03-25-customizing-distill-with-htmltools-and-css/
make_icon_text <- function(icon, text) {
  return(htmltools::HTML(paste0(make_icon(icon), " ", text)))
}

# copied from https://github.com/jhelvy/jhelvy.com
# for more details, see https://www.jhelvy.com/posts/2021-03-25-customizing-distill-with-htmltools-and-css/
# Creates the html to make a button to an external link
icon_link <- function(icon = NULL, text = NULL, url = NULL) {
  if (!is.null(icon)) {
    text <- make_icon_text(icon, text)
  }
  return(htmltools::a(href = url, text, class = "icon-link"))
}
