# R Function for Plot 2 (Line Plot)

# Function plot2 creates a line plot with Global Active Power (kilowatts) on the y-axis
plot2 <- function() {
        plot(df$timestamp,df$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
        dev.copy(png, file = "plot2.png", width = 480, height = 480)
        dev.off()
        cat("plot2.png has been saved in", getwd())
}

# Command to display the graph
plot2()
