library(distilltools)

path <- here::here("templates", "test-template.Rmd")
title <- "EK talk from template"
collection <- "posts"
slug <- "auto"
date <- Sys.Date()
date_prefix <- date
draft <- TRUE

# Checks/test

# note, manually updating test-template.Rmd between these checks

# 1. output set, output distill_article
# expect no change to yaml output

create_post_from_template(
  path = "templates/test-template.Rmd",
  title
)

# pass

# 2. output set, not distill_article
# expect stop

create_post_from_template(
  path = "templates/test-template.Rmd",
  title
)

# pass

# 3. output not set
# expect output key with distill_article to be added to yaml

create_post_from_template(
  path = "templates/test-template.Rmd",
  title
)

# pass

# 4. no title in template
# expect set title at start from title argument

create_post_from_template(
  path = "templates/test-template.Rmd",
  title
)

# pass

# 5. title in template
# expect override template with title from argument

create_post_from_template(
  path = "templates/test-template.Rmd",
  title
)

# pass

# 6. author in yaml, author argument named (not auto)
# expect override yaml with author argument

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  author = c("Ella Kaye", "John Paul Helveston")
)

# pass

# 7. author in yaml, author is auto
# expect no change to author in yaml

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  author = "auto"
)

# pass

# 8. no author in yaml, author supplied
# expect insert author

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  author = "Ella Kaye"
)

# pass

# 9. no author in yaml, no author argument supplied (i.e. auto)
# expect distill_post auto behaviour
# (i.e. get most recent author from specified collection)

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  author = "auto"
)

# pass

# 10. date in yaml
# expect override with supplied date

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  date = "2021-10-10"
)

# pass

# 11. date not in yaml
# expect insert date

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  date = "2020-10-10"
)

# pass

# 12. draft in yaml
# expect override with supplied draft

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  draft = FALSE
)

# pass

# 13. draft not in yaml, argument draft = TRUE
# expect insert draft in yaml

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  draft = TRUE
)

# pass

# 14. draft not in yaml, argument draft = FALSE
# expect no change to yaml

create_post_from_template(
  path = "templates/test-template.Rmd",
  title,
  draft = FALSE
)

# pass
