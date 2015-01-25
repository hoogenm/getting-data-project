
# Explanation of run_analysis.R

## Introduction
The script ```run_analysis.R``` in this repository fulfills the requirements of the course assignment for
"Getting and Cleaning Data". This ```readme.md``` will explain the tools used, "how to use" the script,
and the way the script handles it's job.

In writing the script, in addition to reading the course assignment and the files supplied in the dataset, I also used
the official 'Discussion Forum' for the assignment.

*The script will create ```result_of_step5.csv``` from the dataset.*

The Codebook for the variables is supplied in a separate file.

## Used versions of R and packages
* This script was developed and tested using R version 3.1.2 on a 64-bit Linux system (used distribution: Netrunner 14,
which is based on Ubuntu 14). 
* Additional R Packages used:
  * plyr (version 1.8.1)
  * dplyr (version 0.3.0.2)
  * reshape2 (version 1.4.1)
  
## How to use
* Download the ```run_analysis.R```
* If not yet available on your system: install the required packages in R (please note the versions as specified above)
* Set an appropriate working directory (depending on your storage/system). An example call for ```setwd()``` is provided
in the script. 
* Observe the result in ```result_of_step5.csv```.

Notes:
* The script will download the dataset (unless a cached copy is stored with the name ```HORUS.zip```), so the ẁorking
directory should be writable from R and have sufficient space.
* Unless a cached copy of the dataset is present, the script will download the dataset as ```HORUS.zip``` and unzip it.
* *If* a cached copy is already present, the script will presume the dataset has also been unzipped.
* If you run the script, the result will be the file ```result_of_step5.csv```. Please allow sufficient processing time
depending on the processing equipment (computer, storage) used.

## How does the script work?

### Preparation
* The script will load the required packages/libraries.
* The output folder will be set (requires customization depending on your system, so commented out)
* The dataset will be loaded from the link provided (unless a cached copy is present which the name ```HARUS.zip```).
  If the dataset is newly downloaded, it will be unzipped.
* The raw feature-names will be read from ```UCI HAR Dataset/features.txt``` (column 2).

### Reading the measurements and merging training and testing data
* The measurements will be read from ```train/X_train.txt``` and ```test/X_test.txt``` respectively, then merged
*vertically* (i.e. using ```rbind()```).

### Selecting the means and standard deviations (requirement 2)
In the file ```features_info.txt```, we can read that the means and the standard deviations can be found in the
variables *mean()* and *std()* respectively.
* The script will create a (logical) vector ```keep.feature``` with which features to keep and which to discard (see above).
* The script then will select the appropriate variables.
* The same goes for the variable *names*. Also, the dashes (-) will be replaced by dots, camel-case will be removed
(to follow the Google R Style guide for variable names), and parenthesis will be removed.

### Read the activity codes and give them descriptive names based on the labels
* Activity codes will be read from ```train/y_train.txt``` and ```test/y_train.txt``` as factors.
* They are vertically merged by using ```rbind()```.
* The factors will be recoded by the ```revalue()``` function, using the labels in ```activity_labels.txt```. If you
wish more details: please find them in the scripts comments.

### Read subjects
* Subjects are read from ```train/subject_train.txt``` and ```test/subject_train.txt``` and merged vertically using ```rbind()```.
* *subject* is attached as a name to the column

### Make cleaner labels
The Google R Style Guide is used to make the decision for variable names with lower-case and dots (.).
For X, Y, Z, uppercase is kepts, as these orientations are well-known.
* *t* and *f* are not very descriptive and are for time-series and freq-series respectively, so they are
expanded in *time* and *freq*.
* The parts of the names are seperated by dots.
* The *BodyBody* part of the variables is probably an error in the original dataset, this is corrected.

### Melting the dataset, calculating the means, and casting/tidying the data to a long format
* All measurements are melted into a long format in preparation of calculating grouped means. The columns
  *subject* and *activity* are kept as *'id'*-columns; the type-of-feature is melted into the id-column *feature*.
* ```ddply()``` is now used to calculate the mean of the values for each combination of subject, activity, feature
  (the result is still in long format).
* ```dcast()``` is then used to place each feature (measurement) in it's own column. Every observation (i.e. all
measurements for the same "group" of subject/activity) will be in it's own row.

### Result
* The result is written to a file ```result_of_step5.csv``` using the instructions found in the assignment (i.e. no row
names).



