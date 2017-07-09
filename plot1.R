# R Function for Plot 1 (Histogram Plot)

# Function plot1 creates a Histogram titled "Global Active Power" with a red color
plot1 <- function() {
        hist(df$Global_active_power, main = paste("Global Active Power"), col = "red", xlab = "Global Active Power (kilowatts)")
        dev.copy(png, file = "plot1.png", width = 480, height = 480)
        dev.off()
        cat("Plot1.png has been saved in", getwd())
}

# Command to display the plot
plot1()
