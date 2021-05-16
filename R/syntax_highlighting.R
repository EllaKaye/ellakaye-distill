# Manual

# theme <- readLines("arrow.theme")
# theme taken from rmarkdown/templates/distill_article/resources/arrow.theme in the "distill" package and also accessible via

# arrow_theme_path <- system.file("rmarkdown/templates/distill_article/resources/arrow.theme", package = "distill")

# Could readLines directly from arrow_theme_path, but better to copy to my root directory first, in case distill team tweak colours in the package version, which would stop the gsub/str_replace_all calls from working!

# file.copy(arrow_theme_path, "templates/arrow.theme")

# Now this is done once, keep above lines commented and don't rerun!

# brighter version
theme <- gsub("#AD0000", "#D40067", theme) # red -> pink
theme <- gsub("#8f5902", "#C15500", theme) # brown -> orange (note lower case!)
theme <- gsub("#007BA5", "#6600D4", theme) # blue -> purple
theme <- gsub("#20794D", "#008747", theme) # green -> green
theme <- gsub("#4758AB", "#0067D4", theme) # purple -> blue

writeLines(theme, "ek_syntax_highlighting.theme")

# gsub version with distilltools in mind: tidyverse approach is neater when not caring about package dependencies:

# Alternative tidyverse version
#
# library(stringr)
# library(magrittr)
#
# theme <- readLines("arrow.theme") %>%
#   str_replace_all("#AD0000", "#D40067") %>% # red -> pink
#   str_replace_all("#8f5902", "#C15500") %>% # brown -> orange (note lower case!)
#   str_replace_all("#007BA5", "#6600D4") %>% # blue -> purple
#   str_replace_all("#20794D", "#008747") %>% # green -> green
#   str_replace_all("#4758AB", "#0067D4")     # purple -> blue
#
# writeLines(theme, "ek_syntax_highlighting.theme")

# darker version
# theme <- readLines(here::here("arrow.theme"))
# theme <- gsub("#AD0000", "#C3005F", theme) # red -> pink
# theme <- gsub("#8f5902", "#C15400", theme) # brown -> orange ((note lower case!))
# theme <- gsub("#007BA5", "#5E00C2", theme) # blue -> purple
# theme <- gsub("#20794D", "#008646", theme) # green -> green
# theme <- gsub("#4758AB", "#006FC1", theme) # purple -> blue
#
# writeLines(theme, "ek_syntax_highlighting_darker.theme")

# Will turn this into a distilltools function
# store arrow.theme in inst distilltools.

# Actually, have just heard from Alison Hill that the R Markdown team are working on pandoc package that will include wrapper functions to make your own highlighter, so might hold off on wrapping this in a function/distilltools as their version will be the canonical approach.

# this DOESN'T seem to work to change the background colour
#theme <- readLines("arrow.theme")
#theme[3] <- "    \"background-color\": \"#FDDB97\","
#theme[3]
#theme[4]
#writeLines(theme, "yellow_background.theme")
