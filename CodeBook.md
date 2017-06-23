CodeBook

The dataset for this assigment is downloaded from the "Human Activity Recognition Using Smartphones Data Set": http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag (note the 'f' to indicate frequency domain signals).

The signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

For each subjectId, activityId and 3-axial signal (-XYZ) there was recorded:
  
  -Acceleration
  -Time
  -Body
  -Magnitude
  -Frequency
  -Accelaration

For all resulting variables a (1) mean and a (2) standard deviation was calculated.

The full list of variables (all combinations possible) is listed below.

[1] "subjectId"                                                     "activityId"                                                    "TimeBodyAcceleration.Mean.X"                                  
[4] "TimeBodyAcceleration.Mean.Y"                                   "TimeBodyAcceleration.Mean.Z"                                   "TimeBodyAcceleration.StandardDeviation.X"                     
[7] "TimeBodyAcceleration.StandardDeviation.Y"                      "TimeBodyAcceleration.StandardDeviation.Z"                      "TimeGravityAcceleration.Mean.X"                               
[10] "TimeGravityAcceleration.Mean.Y"                                "TimeGravityAcceleration.Mean.Z"                                "TimeGravityAcceleration.StandardDeviation.X"                  
[13] "TimeGravityAcceleration.StandardDeviation.Y"                   "TimeGravityAcceleration.StandardDeviation.Z"                   "TimeBodyAccelerationJerk.Mean.X"                              
[16] "TimeBodyAccelerationJerk.Mean.Y"                               "TimeBodyAccelerationJerk.Mean.Z"                               "TimeBodyAccelerationJerk.StandardDeviation.X"                 
[19] "TimeBodyAccelerationJerk.StandardDeviation.Y"                  "TimeBodyAccelerationJerk.StandardDeviation.Z"                  "TimeBodyGyro.Mean.X"                                          
[22] "TimeBodyGyro.Mean.Y"                                           "TimeBodyGyro.Mean.Z"                                           "TimeBodyGyro.StandardDeviation.X"                             
[25] "TimeBodyGyro.StandardDeviation.Y"                              "TimeBodyGyro.StandardDeviation.Z"                              "TimeBodyGyroJerk.Mean.X"                                      
[28] "TimeBodyGyroJerk.Mean.Y"                                       "TimeBodyGyroJerk.Mean.Z"                                       "TimeBodyGyroJerk.StandardDeviation.X"                         
[31] "TimeBodyGyroJerk.StandardDeviation.Y"                          "TimeBodyGyroJerk.StandardDeviation.Z"                          "TimeBodyAccelerationMagnitude.Mean"                           
[34] "TimeBodyAccelerationMagnitude.StandardDeviation"               "TimeGravityAccelerationMagnitude.Mean"                         "TimeGravityAccelerationMagnitude.StandardDeviation"           
[37] "TimeBodyAccelerationJerkMagnitude.Mean"                        "TimeBodyAccelerationJerkMagnitude.StandardDeviation"           "TimeBodyGyroMagnitude.Mean"                                   
[40] "TimeBodyGyroMagnitude.StandardDeviation"                       "TimeBodyGyroJerkMagnitude.Mean"                                "TimeBodyGyroJerkMagnitude.StandardDeviation"                  
[43] "FrequencyuencyBodyAcceleration.Mean.X"                         "FrequencyuencyBodyAcceleration.Mean.Y"                         "FrequencyuencyBodyAcceleration.Mean.Z"                        
[46] "FrequencyuencyBodyAcceleration.StandardDeviation.X"            "FrequencyuencyBodyAcceleration.StandardDeviation.Y"            "FrequencyuencyBodyAcceleration.StandardDeviation.Z"           
[49] "FrequencyuencyBodyAcceleration.MeanFrequency.X"                "FrequencyuencyBodyAcceleration.MeanFrequency.Y"                "FrequencyuencyBodyAcceleration.MeanFrequency.Z"               
[52] "FrequencyuencyBodyAccelerationJerk.Mean.X"                     "FrequencyuencyBodyAccelerationJerk.Mean.Y"                     "FrequencyuencyBodyAccelerationJerk.Mean.Z"                    
[55] "FrequencyuencyBodyAccelerationJerk.StandardDeviation.X"        "FrequencyuencyBodyAccelerationJerk.StandardDeviation.Y"        "FrequencyuencyBodyAccelerationJerk.StandardDeviation.Z"       
[58] "FrequencyuencyBodyAccelerationJerk.MeanFrequency.X"            "FrequencyuencyBodyAccelerationJerk.MeanFrequency.Y"            "FrequencyuencyBodyAccelerationJerk.MeanFrequency.Z"           
[61] "FrequencyuencyBodyGyro.Mean.X"                                 "FrequencyuencyBodyGyro.Mean.Y"                                 "FrequencyuencyBodyGyro.Mean.Z"                                
[64] "FrequencyuencyBodyGyro.StandardDeviation.X"                    "FrequencyuencyBodyGyro.StandardDeviation.Y"                    "FrequencyuencyBodyGyro.StandardDeviation.Z"                   
[67] "FrequencyuencyBodyGyro.MeanFrequency.X"                        "FrequencyuencyBodyGyro.MeanFrequency.Y"                        "FrequencyuencyBodyGyro.MeanFrequency.Z"                       
[70] "FrequencyuencyBodyAccelerationMagnitude.Mean"                  "FrequencyuencyBodyAccelerationMagnitude.StandardDeviation"     "FrequencyuencyBodyAccelerationMagnitude.MeanFrequency"        
[73] "FrequencyuencyBodyAccelerationJerkMagnitude.Mean"              "FrequencyuencyBodyAccelerationJerkMagnitude.StandardDeviation" "FrequencyuencyBodyAccelerationJerkMagnitude.MeanFrequency"    
[76] "FrequencyuencyBodyGyroMagnitude.Mean"                          "FrequencyuencyBodyGyroMagnitude.StandardDeviation"             "FrequencyuencyBodyGyroMagnitude.MeanFrequency"                
[79] "FrequencyuencyBodyGyroJerkMagnitude.Mean"                      "FrequencyuencyBodyGyroJerkMagnitude.StandardDeviation"         "FrequencyuencyBodyGyroJerkMagnitude.MeanFrequency"     