# Manual

theme <- readLines(here::here("arrow.theme"))


#arrow_theme <- system.file("rmarkdown/templates/distill_article/resources/arrow.theme", package = "distill")

# brighter version
theme <- gsub("#AD0000", "#D40067", theme) # red -> pink
theme <- gsub("#8F5902", "#C15500", theme) # brown -> orange
theme <- gsub("#007BA5", "#6600D4", theme) # blue -> purple
theme <- gsub("#20794D", "#008747", theme) # green -> green
theme <- gsub("#4758AB", "#0077CE", theme) # purple -> blue

writeLines(theme, "ek_syntax_highlighting.theme")


# darker version
theme <- readLines(here::here("arrow.theme"))
theme <- gsub("#AD0000", "#C3005F", theme) # red -> pink
theme <- gsub("#8F5902", "#C15400", theme) # brown -> orange
theme <- gsub("#007BA5", "#5E00C2", theme) # blue -> purple
theme <- gsub("#20794D", "#008646", theme) # green -> green
theme <- gsub("#4758AB", "#006FC1", theme) # purple -> blue

writeLines(theme, "ek_syntax_highlighting.theme")

# Will eventually turn this into a distilltools function
# store arrow.theme in distilltools. Or could even pull from distill.

