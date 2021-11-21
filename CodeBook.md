# Code Book

This code book describes the data fields in the `tidyData.txt` file which were produced by the modification of the original data set located in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Modifications to the original data set

- The training and the test sets were merging to create one data set.
- It was extracted only the measurements on the mean and standard deviation for each measurement.
- It was used descriptive activity names to name the activities in the data set, instead of activity codes.
- The data set was appropriately labeled with descriptive variable names.
- Finally, it was created a second, independent tidy data set with the average of each variable for each activity and each subject (`tidyData.txt`).

## Description of the modified data set

### Identifiers

The first two columns are identifiers:

- `subject`: The ID of the test subject, `integer` (1-30)
- `Activity`: The type of activity performed by the subject when the measurements were taken, `character`
  - Walking
  - Walking_Upstairs
  - Walking_Downstairs
  - Sitting
  - Standing
  - Laying

### Measurements
As mentioned above, the measurement variables our tidy data set are the average of the measurements on the mean and standard deviation for each measurement of the original data set, grouped by subject and activity.

- `TimeBodyAccelerometer_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometer_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometer_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometerMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerkMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerkMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_MeanFreq_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_MeanFreq_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_MeanFreq_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_MeanFreq_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_MeanFreq_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_MeanFreq_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_Mean_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_Mean_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_Mean_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_MeanFreq_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_MeanFreq_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_MeanFreq_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerMagnitude_MeanFreq`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyAccelerometerJerkMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyAccelerometerJerkMagnitude_MeanFreq`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeMagnitude_MeanFreq`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeJerkMagnitude_Mean`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeJerkMagnitude_MeanFreq`: The average value for this feature, `numeric` (range -1:1)
- `angle(TimeBodyAccelerometerMean,gravity)`: The average value for this feature, `numeric` (range -1:1)`numeric`
- `angle(TimeBodyAccelerometerJerkMean),gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `angle(TimeBodyGyroscopeMean,gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `angle(TimeBodyGyroscopeJerkMean,gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `angle(X,gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `angle(Y,gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `angle(Z,gravityMean)`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometer_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometer_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometer_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometer_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerk_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscope_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerk_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `TimeGravityAccelerometerMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyAccelerometerJerkMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `TimeBodyGyroscopeJerkMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometer_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerJerk_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_StandardDeviation_X`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_StandardDeviation_Y`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyGyroscope_StandardDeviation_Z`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyAccelerometerMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyAccelerometerJerkMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
- `FrequencyBodyBodyGyroscopeJerkMagnitude_StandardDeviation`: The average value for this feature, `numeric` (range -1:1)
