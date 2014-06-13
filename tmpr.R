# http://rstudio-pubs-static.s3.amazonaws.com/17216_47e9287d1f4f4319a9fd59177e69d09a.html
# http://rstudio-pubs-static.s3.amazonaws.com/19070_766b326c875e4c58a18aeca4edf0412a.html

# two months of data from an anonymous individual collected during the months of October and November, 
# 2012 and include the number of steps taken in 5 minute intervals each day

# The variables included in this dataset are:     
# steps: Number of steps taking in a 5-minute interval (missing values are coded as NA)
# date: The date on which the measurement was taken in YYYY-MM-DD format
# interval: Identifier for the 5-minute interval in which measurement was taken
# 
# The dataset is stored in a comma-separated-value (CSV) file and there are a total of 
# 17,568 observations in this dataset.

##### 1. Loading and preprocessing the data 
# Show any code that is needed to
# 1.1. Load the data (i.e. read.csv())
# 1.2. Process/transform the data (if necessary) into a format suitable for your analysis


# Set the working directory to the directory of the file
setwd("~/GitHub/RepData_PeerAssessment1")
# Read activity.csv into the variable data
data = read.csv("activity.csv")
# tranform data
data$date <- as.Date(data$date, format = "%Y-%m-%d")

summary(data)

[transform]

##### 2. What is mean total number of steps taken per day?
# For this part of the assignment, you can ignore the missing values in the dataset.
# 2.1. Make a histogram of the total number of steps taken each day
# 2.2. Calculate and report the mean and median total number of steps taken per day

hist(data$newDate,
    "days", freq = "TRUE",
       main = "Histogram of steps", 
       ylab = "Frequency of steps",
       xlab = "Days")

hist(data$date[(data$steps=="x")], "days", 
     format = "%d %b %y", freq=T, col=rgb(0,0,0,1), axes=T, main="", add=T)
[histogram of total number of steps taken each day]
[calculate and report mean and median total number of steps taken per day]

##### 3. What is the average daily activity pattern?
# 3.1. Make a time series plot (i.e. type = "l") of the 5-minute interval (x-axis) 
# and the average number of steps taken, averaged across all days (y-axis)
# 3.2. Which 5-minute interval, on average across all the days in the dataset, 
# contains the maximum number of steps?

[timeseries plot]
[which 5-minute interval max number]

##### 4. Imputing missing values
# 4.1. Calculate and report the total number of missing values in the dataset 
# (i.e. the total number of rows with NAs)
# 4.2. Devise a strategy for filling in all of the missing values in the dataset. 
# The strategy does not need to be sophisticated. For example, you could use the 
# mean/median for that day, or the mean for that 5-minute interval, etc.
# 4.3. Create a new dataset that is equal to the original dataset but with the 
# missing data filled in.
# 4.4. Make a histogram of the total number of steps taken each day and calculate 
# and report the mean and median total number of steps taken per day. Do these values 
# differ from the estimates from the first part of the assignment? What is the impact 
# of imputing missing data on the estimates of the total daily number of steps?

[Calculate and report the total number of missing values in the dataset]
[Devise a strategy for filling in all of the missing values in the dataset]
[Create a new dataset missing data filled in]
[histogram]

##### 5. Are there differences in activity patterns between weekdays and weekends?
# 5.1 Create a new factor variable in the dataset with two levels -- "weekday" and "weekend" 
# indicating whether a given date is a weekday or weekend day.
# 5.2 Make a panel plot containing a time series plot (i.e. type = "l") of the 5-minute 
# interval (x-axis) and the average number of steps taken, averaged across all weekday 
# days or weekend days (y-axis). 

[factor variable]
[panel plot]
