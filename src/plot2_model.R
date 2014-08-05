source("env.R")
draw_plot2 <- function(){
  g <- gl(480, 6)
  x <- c()
  for (i in 1:480 ) {
    x <- c(x, max(epc_data$Global_a[g == i]))    
  }
  plot(x, type="l", ylab="Global Active Power (kilowatts)", xaxt="n", xlab="")
  axis(1, c(1, 240, 480), c("Thu","Fri","Sat") )  
}
