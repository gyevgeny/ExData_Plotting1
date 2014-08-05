source("env.R")

draw_plot3 <- function(){
  plot(epc_data$Sub_metering_1, type="l", ylab="Energy sub metering", xaxt="n", xlab="")
  axis(1, c(1, 1440, 2880), c("Thu","Fri","Sat") )

  par(new = TRUE)
  plot( epc_data$Sub_metering_2, type="l", axes = FALSE, xlab = "", ylab = "", col="red",ylim=range(epc_data$Sub_metering_1))

  par(new = TRUE)
  plot( epc_data$Sub_metering_3, type="l", axes = FALSE, xlab = "", ylab = "", col="blue",ylim=range(epc_data$Sub_metering_1))

  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), pch="-")
}