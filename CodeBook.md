
#Description of the Original Data Set


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

complete description of all the files in the data set is in the README.txt inside the Data Set

#Data Analysis

From this set of original measurements, Only the measurements which are means or standard deviations were selected and Mean values were computed for each measurement for each activity for each subject. Since the original meausrements were normalized and bound to the range of [-1,1] these values are unit less. 

Given below are the computed features included in the processed dataset.

Subject : Id of the subject Value: 1 - 30
Activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS ,SITTING, STANDING or LAYING

Computed Measurement Columns:

"1" "tBodyAcc-mean()-X"
"2" "tBodyAcc-mean()-Y"
"3" "tBodyAcc-mean()-Z"
"4" "tGravityAcc-mean()-X"
"5" "tGravityAcc-mean()-Y"
"6" "tGravityAcc-mean()-Z"
"7" "tBodyAccJerk-mean()-X"
"8" "tBodyAccJerk-mean()-Y"
"9" "tBodyAccJerk-mean()-Z"
"10" "tBodyGyro-mean()-X"
"11" "tBodyGyro-mean()-Y"
"12" "tBodyGyro-mean()-Z"
"13" "tBodyGyroJerk-mean()-X"
"14" "tBodyGyroJerk-mean()-Y"
"15" "tBodyGyroJerk-mean()-Z"
"16" "tBodyAccMag-mean()"
"17" "tGravityAccMag-mean()"
"18" "tBodyAccJerkMag-mean()"
"19" "tBodyGyroMag-mean()"
"20" "tBodyGyroJerkMag-mean()"
"21" "fBodyAcc-mean()-X"
"22" "fBodyAcc-mean()-Y"
"23" "fBodyAcc-mean()-Z"
"24" "fBodyAcc-meanFreq()-X"
"25" "fBodyAcc-meanFreq()-Y"
"26" "fBodyAcc-meanFreq()-Z"
"27" "fBodyAccJerk-mean()-X"
"28" "fBodyAccJerk-mean()-Y"
"29" "fBodyAccJerk-mean()-Z"
"30" "fBodyAccJerk-meanFreq()-X"
"31" "fBodyAccJerk-meanFreq()-Y"
"32" "fBodyAccJerk-meanFreq()-Z"
"33" "fBodyGyro-mean()-X"
"34" "fBodyGyro-mean()-Y"
"35" "fBodyGyro-mean()-Z"
"36" "fBodyGyro-meanFreq()-X"
"37" "fBodyGyro-meanFreq()-Y"
"38" "fBodyGyro-meanFreq()-Z"
"39" "fBodyAccMag-mean()"
"40" "fBodyAccMag-meanFreq()"
"41" "fBodyBodyAccJerkMag-mean()"
"42" "fBodyBodyAccJerkMag-meanFreq()"
"43" "fBodyBodyGyroMag-mean()"
"44" "fBodyBodyGyroMag-meanFreq()"
"45" "fBodyBodyGyroJerkMag-mean()"
"46" "fBodyBodyGyroJerkMag-meanFreq()"
"47" "angle(tBodyAccMean,gravity)"
"48" "angle(tBodyAccJerkMean),gravityMean)"
"49" "angle(tBodyGyroMean,gravityMean)"
"50" "angle(tBodyGyroJerkMean,gravityMean)"
"51" "angle(X,gravityMean)"
"52" "angle(Y,gravityMean)"
"53" "angle(Z,gravityMean)"
"54" "tBodyAcc-std()-X"
"55" "tBodyAcc-std()-Y"
"56" "tBodyAcc-std()-Z"
"57" "tGravityAcc-std()-X"
"58" "tGravityAcc-std()-Y"
"59" "tGravityAcc-std()-Z"
"60" "tBodyAccJerk-std()-X"
"61" "tBodyAccJerk-std()-Y"
"62" "tBodyAccJerk-std()-Z"
"63" "tBodyGyro-std()-X"
"64" "tBodyGyro-std()-Y"
"65" "tBodyGyro-std()-Z"
"66" "tBodyGyroJerk-std()-X"
"67" "tBodyGyroJerk-std()-Y"
"68" "tBodyGyroJerk-std()-Z"
"69" "tBodyAccMag-std()"
"70" "tGravityAccMag-std()"
"71" "tBodyAccJerkMag-std()"
"72" "tBodyGyroMag-std()"
"73" "tBodyGyroJerkMag-std()"
"74" "fBodyAcc-std()-X"
"75" "fBodyAcc-std()-Y"
"76" "fBodyAcc-std()-Z"
"77" "fBodyAccJerk-std()-X"
"78" "fBodyAccJerk-std()-Y"
"79" "fBodyAccJerk-std()-Z"
"80" "fBodyGyro-std()-X"
"81" "fBodyGyro-std()-Y"
"82" "fBodyGyro-std()-Z"
"83" "fBodyAccMag-std()"
"84" "fBodyBodyAccJerkMag-std()"
"85" "fBodyBodyGyroMag-std()"
"86" "fBodyBodyGyroJerkMag-std()"

