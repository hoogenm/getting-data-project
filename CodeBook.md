# Codebook

## Transformations / general comments

* All features are based on the original dataset (as described in the dataset, esp. features_info.txt).
* Only *mean (values)* and *standard deviations* were kept, all other features were discarded from the dataset.
  Based on ```features_info.txt``` (in the original dataset), those are the *mean()* and *std()* variables in the
  original dataset.
* The datafiles for measurements (X), activities (Y) and subjects were read, both for *training* data and for *test*
  data, and all merged into *one* dataframe/datafile.
* Activity codes were replaced by descriptive labels, obtained from ```activity_labels.txt```.
* For each combination of subject (volunteering participant) and activity, all measurements of the same variable
  were *averaged* (mean value taken). Thus, a combination of subject and activity is one 'observation' in the final
  dataset (one observation is one observed group/combination in the final dataset).
* All resulting variables are *means* (averages) with respect to the measurement values in the original dataset.
  This is reflected in the variable names by the *avg.*-prefix to all variables (in the resulting dataset).
* All measurements of one type are in their own column. Each set of measurements (of one *observed* combination
  of subject and activity, an observation) is on a separate (and exactly one) row.
* The observations - all of similar type/unit - are now in one datafile.

## All variables
(Note: this list can also be found as a PDF in the repository)


subject
* Number of a volunteer ('subject') who participated in the experiment.
  * format: 2 positions (digits)
  * values: 1..30

activity        
* Activity labels denote the activity that the subject was performing when ameasurement was taken.
  * format:         18 position (alpha)
  * values:         "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

avg.freq.body.acc.jerk.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.mean.X
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.mean.Y
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.mean.Z
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.std.X
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.std.Y
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.jerk.std.Z
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the body linear acceleration. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the body linear acceleration. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.mean.X
* Average (across subject and activity) of the mean of the body linear acceleration. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.mean.Y
* Average (across subject and activity) of the mean of the body linear acceleration. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.mean.Z
* Average (across subject and activity) of the mean of the body linear acceleration. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.std.X
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.std.Y
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.acc.std.Z
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.jerk.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.jerk.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the body angular velocity. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the body angular velocity. In the frequency domain (calculated by FFT); for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.mean.X
* Average (across subject and activity) of the mean of the body angular velocity. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.mean.Y
* Average (across subject and activity) of the mean of the body angular velocity. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.mean.Z
* Average (across subject and activity) of the mean of the body angular velocity. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.std.X
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the frequency domain (calculated by FFT); for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.std.Y
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the frequency domain (calculated by FFT); for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.freq.body.gyro.std.Z
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the frequency domain (calculated by FFT); for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.mean.X
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.mean.Y
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.mean.Z
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.std.X
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.std.Y
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.jerk.std.Z
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body linear acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the body linear acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the body linear acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.mean.X
* Average (across subject and activity) of the mean of the body linear acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.mean.Y
* Average (across subject and activity) of the mean of the body linear acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.mean.Z
* Average (across subject and activity) of the mean of the body linear acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.std.X
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.std.Y
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.acc.std.Z
* Average (across subject and activity) of the standard deviation of the body linear acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.mean.X
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.mean.Y
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.mean.Z
* Average (across subject and activity) of the mean of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.std.X
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.std.Y
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.jerk.std.Z
* Average (across subject and activity) of the standard deviation of the Jerk signal of (i.e. derived in time from) the body angular velocity. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the body angular velocity. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the body angular velocity. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.mean.X
* Average (across subject and activity) of the mean of the body angular velocity. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.mean.Y
* Average (across subject and activity) of the mean of the body angular velocity. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.mean.Z
* Average (across subject and activity) of the mean of the body angular velocity. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.std.X
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.std.Y
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.body.gyro.std.Z
* Average (across subject and activity) of the standard deviation of the body angular velocity. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.mag.mean
* Average (across subject and activity) of the mean of the magnitude of the gravity acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.mag.std
* Average (across subject and activity) of the standard deviation of the magnitude of the gravity acceleration. In the time domain; for all directions.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.mean.X
* Average (across subject and activity) of the mean of the gravity acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.mean.Y
* Average (across subject and activity) of the mean of the gravity acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.mean.Z
* Average (across subject and activity) of the mean of the gravity acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.std.X
* Average (across subject and activity) of the standard deviation of the gravity acceleration. In the time domain; for the X direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.std.Y
* Average (across subject and activity) of the standard deviation of the gravity acceleration. In the time domain; for the Y direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)

avg.time.gravity.acc.std.Z
* Average (across subject and activity) of the standard deviation of the gravity acceleration. In the time domain; for the Z direction.
  * format: 9-21 positions (numeric)
  * values: a (numeric) value between -1.0 and 1.0 inclusive (normalized value)
