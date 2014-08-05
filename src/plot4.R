source("env.R")
source("plot2_model.R")
source("plot3_model.R")

png(filename="plot4.png", width=480, height=480,bg = "white")

par(mfrow = c(2,2))

#Plot 1
draw_plot2()

# Plot 2
g <- gl(480, 6)
x <- c()
for (i in 1:480 ) {
  x <- c(x, mean(epc_data$Voltage[g == i]))    
}
plot(x, type="l", ylab="Voltage", xaxt="n", xlab="datetime")
axis(1, c(1, 240, 480), c("Thu","Fri","Sat") )  

# Plot 3
draw_plot3()

# Plot 4
plot( epc_data$Global_reactive_power, ylab="Global_reactive_power", type="l", xaxt="n", xlab="datetime")
axis(1, c(1, 1440, 2880), c("Thu","Fri","Sat") )  

dev.off()

