# R Function of Plot 3 (Energy Sub Metering Plot)

# Function plot3 creates a graph known as Energy Sub Metering Plot that plots 3 distinct lines with different colors of black, red, blue. 
plot3 <- function() {
        plot(df$timestamp,df$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering")
        lines(df$timestamp,df$Sub_metering_2,col="red")
        lines(df$timestamp,df$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
        dev.copy(png, file="plot3.png", width=480, height=480)
        dev.off()
        cat("plot3.png has been saved in", getwd())
}

# Command to display plot3
plot3()
