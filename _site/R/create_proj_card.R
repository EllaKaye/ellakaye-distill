# From Ijeamaka Anyeme
# https://github.com/Ijeamakaanyene/ijeamaka-anyene
# https://ijeamaka-anyene.netlify.app

library(htmltools)

create_proj_card <- function(img_src, url, title, text, text2){
  tags$div(
    class = "card",
    tags$img(class="card-img-top",
             src=img_src,
             style="width:300px;"),
    tags$div(
      class = "card-body",
      h4(
        a(href = url,
          title)),
      p(class = "card-text",
        text, br(), text2)
    )
  )

}



