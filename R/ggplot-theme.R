#' Add custom ggplot theme
#' 
#' This function will add a custom ggplot theme if add to a ggplot object.
#' It will have
#' * font "sans"="arial", size=6
#' * transparent panel background with a black border
#' * grid with grey color
#' @examples
#' df <- data.frame(dose=c("D0.5", "D1", "D2"), len=c(4.2, 10, 29.5))
#' p <- ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity")
#' p + theme_misc()
#' @export
theme_misc <- function() {
  ggplot2::theme(text=element_text(family="sans", size=6),
                 panel.background=element_rect(fill=NA),
                 panel.border=element_rect(fill=NA, size=0.25, color="black"),
                 panel.grid=element_line(size=0.1, color="grey75"),
                 legend.key.size=unit(c(9,9), "points"),
                 legend.key = element_rect(fill=NA)
                 )
}