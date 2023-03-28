#' Plot data with dual yaxis using ggplot
#' 
#' using sec_axis() with automatic scale function
#' use stat_summary to plot the mean grouped by x_axis value
#' @param df data frame that contain more than 2 variables to plot
#' @return ggplot object
#' @importFrom ggplot2 ggplot aes labs geom_point scale_x_continuous scale_y_continuous scale_color_manual
#' @importFrom ggplot2 sec_axis theme element_text stat_summary
#' @importFrom RColorBrewer brewer.pal
#' @export
ggplot_dual_yaxis <- function(df, X, Y1, Y2) {
  # color pallette 
  vt.color = brewer.pal(9, "Set1")[1:2] |> rev()
  names(vt.color) = c(Y1, Y2)
  # function factory for scale
  max1  <- max(df[[Y1]])   # Specify max of first y axis
  max2 <- max(df[[Y2]]) # Specify max of second y axis
  min1  <- min(df[[Y1]])   # Specify min of first y axis
  min2 <- min(df[[Y2]]) # Specify min of second y axis
  # scale and shift variables calculated based on desired mins and maxes
  scale = (max1 - min1)/(max2 - min2)
  shift = min2*scale - min1 
  # Function to scale secondary axis
  scale_function <- function(x, scale, shift){
    x*scale - shift
  }
  # Function to scale secondary variable values
  inv_scale_function <- function(x, scale, shift){
    (x + shift) / scale
  }
  # Function to summarize the data to used within this function
  median.quartile <- function(x){
    out <- quantile(x, probs = c(0.25,0.5,0.75))
    names(out) <- c("ymin","y","ymax")
    return(out)
  }
  # # X = "cyl" ; Y1 = "mpg" ; Y2 = "disp"
  p = ggplot(df, aes(x = .data[[X]])) +
    stat_summary(aes(y = .data[[Y1]], color = Y1), fun.data = median.quartile, geom = "pointrange") +
    stat_summary(aes(y = scale_function(.data[[Y2]], scale, shift), color =Y2), geom = "pointrange") +
    scale_color_manual(values = vt.color) +
    scale_y_continuous(sec.axis = sec_axis( ~inv_scale_function(., scale, shift), name = Y2)) +
    theme(axis.title.y.left = element_text(color = vt.color[Y1]),
          axis.text.y.left = element_text(color = vt.color[Y1]),
          axis.title.y.right = element_text(color = vt.color[Y2]),
          axis.text.y.right = element_text(color = vt.color[Y2]),
          legend.position = "none")
  return(p)
}
#' function factory to assign scale function
#' 
#' @param X parameters for the factory function
#' @return a function with saved params
#' @export
scale_factory <- function(X){
  max1  <- max(res$CP)   # Specify max of first y axis
  max2 <- max(res$RESP) # Specify max of second y axis
  min1  <- min(res$CP)   # Specify min of first y axis
  min2 <- min(res$RESP) # Specify min of second y axis
  
  # scale and shift variables calculated based on desired mins and maxes
  scale = (max2 - min2)/(max1 - min1)
  shift = min1 - min2
  
  # Function to scale secondary axis
  scale_function <- function(x, scale, shift){
    return ((x)*scale - shift)
  }
  
  # Function to scale secondary variable values
  inv_scale_function <- function(x, scale, shift){
    return ((x + shift)/scale)
  }
}
