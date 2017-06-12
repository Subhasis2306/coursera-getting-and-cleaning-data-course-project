# Code book for Coursera *Getting and Cleaning Data* course project

The data set that this code book pertains to is located in the `tidydata.txt` file of this repository.

See the `README.md` file of this repository for background information on this data set.

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data <a name="data"></a>

The `tidydata.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the [Variables](#variables) section, and the following rows contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `t`), resulting from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals (variables prefixed by `f`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAccMeanX`
	- `tBodyAccMeanY`
	- `tBodyAccMeanZ`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAccStdX`
	- `tBodyAccStdY`
	- `tBodyAccStdZ`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAccMeanX`
	- `tGravityAccMeanY`
	- `tGravityAccMeanZ`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAccStdX`
	- `tGravityAccStdY`
	- `tGravityAccStdZ`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `tBodyAccJerkMeanX`
	- `tBodyAccJerkMeanY`
	- `tBodyAccJerkMeanZ`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `tBodyAccJerkStdX`
	- `tBodyAccJerkStdY`
	- `tBodyAccJerkStdZ`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyroMeanX`
	- `tBodyGyroMeanY`
	- `tBodyGyroMeanZ`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyroStdX`
	- `tBodyGyroStdY`
	- `tBodyGyroStdZ`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerkMeanX`
	- `tBodyGyroJerkMeanY`
	- `tBodyGyroJerkMeanZ`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerkStdX`
	- `tBodyGyroJerkStdY`
	- `tBodyGyroJerkStdZ`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `tBodyAccMagMean`
	- `tBodyAccMagStd`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `tGravityAccMagMean`
	- `tGravityAccMagStd`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `tBodyAccJerkMagMean`
	- `tBodyAccJerkMagStd`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `tBodyGyroMagMean`
	- `tBodyGyroMagStd`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `tBodyGyroJerkMagMean`
	- `tBodyGyroJerkMagStd`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccMeanX`
	- `fBodyAccMeanY`
	- `fBodyAccMeanZ`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccStdX`
	- `fBodyAccStdY`
	- `fBodyAccStdZ`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccMeanFreqX`
	- `fBodyAccMeanFreqY`
	- `fBodyAccMeanFreqZ`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkMeanX`
	- `fBodyAccJerkMeanY`
	- `fBodyAccJerkMeanZ`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkStdX`
	- `fBodyAccJerkStdY`
	- `fBodyAccJerkStdZ`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkMeanFreqX`
	- `fBodyAccJerkMeanFreqY`
	- `fBodyAccJerkMeanFreqZ`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyroMeanX`
	- `fBodyGyroMeanY`
	- `fBodyGyroMeanZ`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyroStdX`
	- `fBodyGyroStdY`
	- `fBodyGyroStdZ`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyroMeanFreqX`
	- `fBodyGyroMeanFreqY`
	- `fBodyGyroMeanFreqZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `fBodyAccMagMean`
	- `fBodyAccMagStd`
	- `fBodyAccMagMeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `fBodyAcceJerkMagMean`
	- `fBodyAcceJerkMagStd`
	- `fBodyAcceJerkMagMeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `fBodyGyroMagMean`
	- `fBodyGyroMagStd`
	- `fBodyGyroMagMeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `fBodyGyroJerkMagMean`
	- `fBodyGyroJerkMagStd`
	- `fBodyGyroJerkMagMeanFreq`

## Transformations <a name="transformations"></a>

The zip file containing the source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded.
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (see [Identifiers](#identifiers) section).
1. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `timeDomainBodyAccelerometerMeanX`), using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `frequencyDomain` and `timeDomain` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- Replaced (supposedly incorrect as per source's `features_info.txt` file) `BodyBody` with `Body`.
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script (see `README.md` file for usage instructions).
