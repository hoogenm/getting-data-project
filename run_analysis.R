
# Getting and cleaning Data: Project Assignment
# Developed and tested on R version 3.1.2 on Linux (Ubuntu 14)
# - Variable names follow Google R Style guide recommendations (dot notation)
# - Identation follows advise from video lectures (Roger Weng): 8 spaces

library(plyr)      # plyr and dplyr for function call chaining with ...
library(dplyr)     # ... %>% and for revalue() to recode activities by labels
library(reshape2)  # to melt the dataset for step 5

setwd('~/data-science/getting-project')  # Set output folder: customize if/as needed
url <- paste0("https://d396qusza40orc.cloudfront.net/",
              "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")

# if dataset not already present (in file HARUS.zip) then download and unzip
if (!file.exists('HARUS.zip')) {
        download.file(url, destfile="HARUS.zip", method="curl")
        unzip("HARUS.zip")
}

dataset.folder <- 'UCI HAR Dataset/' # Name of dataset folder after unzipping

# Read feature names from features.txt, column 2
feature.names.raw <- read.table(paste0(dataset.folder, 'features.txt'),
                                as.is=TRUE)[,2]

# Read measurements for Ttraining and Test; and merge vertically (using rbind)
measurements <- rbind(read.table(paste0(dataset.folder, 'train/X_train.txt'),
                                 as.is=TRUE),
                      read.table(paste0(dataset.folder, 'test/X_test.txt'),
                                 as.is=TRUE))

# In features_info.txt we can read that the means and the standard
# deviations can be found in the variables mean() # and std() respectively.
# So keep those features (requirement 2).
keep.feature <- grepl('mean\\(\\)|std\\(\\)', raw.feature.names)
measurements <- measurements[, keep.feature]

# Give the features syntactically valid names: remove "("), ")", and "-"
names(measurements) <- feature.names.raw[keep.feature] %>%
                       gsub(pattern="-", replacement=".") %>%  # replace - by . 
                       gsub(pattern="\\(|\\)", replacement="")  # remove ()

# Now read the activity codes (as factors). And name the column.
activities <- rbind(read.table(paste0(dataset.folder, 'train/y_train.txt'),
                               colClasses=c("factor")),
                    read.table(paste0(dataset.folder, 'test/y_test.txt'),
                               colClasses=c("factor")))
names(activities) <- c("activity")

# For requirement 3, read activity labels from activity_labels.txt and recode
# a) First create a vector like "1" = "name of act 1", "2" = "name act 2", ..
activity.labels.df <- read.table(paste0(dataset.folder, 'activity_labels.txt'),
                                 as.is=TRUE)
activity.labels.vector <- activity.labels.df[,2]
names(activity.labels.vector) <- row.names(activity.labels.df)
# b) Now recode the activities in the activities data.frame
activities[,1] <- revalue(activities[,1], activity.labels.vector)

# Read the subjects for training and test, and merge them vertically (rbind)
subjects <- rbind(read.table(paste0(dataset.folder, 'train/subject_train.txt'),
                             as.is=TRUE),
                  read.table(paste0(dataset.folder, 'test/subject_test.txt'),
                             as.is=TRUE))
names(subjects) <- 'subject' # Give the "subjects" column its own label

# Now merge the measurements, activities, and subjects
merged.dataset <- cbind(subjects, activities, measurements)

# make cleaner labels:
# separate the parts by a dot (.) following Google R Style guide;
# make f and t more descriptive; correct the double 'Body' in some var names.
names(merged.dataset) <-
        names(merged.dataset) %>%
        gsub(patt='BodyBody', repl='Body') %>%  # BodyBody is probably an error
        gsub(patt="^t", repl="time") %>%  # t is short for a time-variable
        gsub(patt="^f", repl="freq") %>%  # f is short for a freq-variable
        gsub(perl=TRUE, patt="([A-W])", repl=".\\L\\1")
        
melted.dataset <- melt(merged.dataset, .(subject, activity),
                       variable.name="feature")

# Calculate the mean for each variable; assignment requirement 5
means.for.dataset <- ddply(melted.dataset,
                           c("subject", "activity", "feature"),
                           summarize, average=mean(value))

# Prepend 'avg' to all feature names to indicate that they now are averages
means.for.dataset$feature <- paste('avg', sep='.', means.for.dataset$feature)

# Cast into a tidy, wide format; each measurement (feature) in it's own column
tidy.means <- dcast(means.for.dataset, subject + activity ~ feature,
                    value.var="average")

write.table(tidy.means, file="result_of_step5.csv", row.names=FALSE)