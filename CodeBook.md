CODE BOOK 

For data sets obtained by running run_analysis.R, which does the following:
* Creates a folder called ‘dataweek4’ to store data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Downloads accelerometer.zip and unzips data folder UCI HAR Dataset
* Merges the training and the test sets to create one data set called ‘tidydata’
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* From the data set ‘tidydata’, creates a second, independent tidy data set with the average of each variable for each activity and each subject called ‘averages’


TIDYDATA DATA SET:

Variables:

1 tBodyAccmeanX               
2 tBodyAccmeanY               
3 tBodyAccmeanZ               
4 tBodyAccstdX                
5 tBodyAccstdY                
6 tBodyAccstdZ                
7 tGravityAccmeanX            
8 tGravityAccmeanY            
9 tGravityAccmeanZ            
10 tGravityAccstdX            
11 tGravityAccstdY             
12 tGravityAccstdZ             
13 tBodyAccJerkmeanX           
14 tBodyAccJerkmeanY           
15 tBodyAccJerkmeanZ           
16 tBodyAccJerkstdX            
17 tBodyAccJerkstdY            
18 tBodyAccJerkstdZ            
19 tBodyGyromeanX              
20 tBodyGyromeanY              
21 tBodyGyromeanZ              
22 tBodyGyrostdX               
23 tBodyGyrostdY               
24 tBodyGyrostdZ               
25 tBodyGyroJerkmeanX          
26 tBodyGyroJerkmeanY          
27 tBodyGyroJerkmeanZ          
28 tBodyGyroJerkstdX           
29 tBodyGyroJerkstdY           
30 tBodyGyroJerkstdZ           
31 tBodyAccMagmean             
32 tBodyAccMagstd              
33 tGravityAccMagmean          
34 tGravityAccMagstd           
35 tBodyAccJerkMagmean         
36 tBodyAccJerkMagstd          
37 tBodyGyroMagmean            
38 tBodyGyroMagstd             
39 tBodyGyroJerkMagmean        
40 tBodyGyroJerkMagstd         
41 fBodyAccmeanX               
42 fBodyAccmeanY               
43 fBodyAccmeanZ               
44 fBodyAccstdX                
45 fBodyAccstdY                
46 fBodyAccstdZ                 
47 fBodyAccmeanFreqX           
48 fBodyAccmeanFreqY           
49 fBodyAccmeanFreqZ           
50 fBodyAccJerkmeanX           
51 fBodyAccJerkmeanY           
52 fBodyAccJerkmeanZ           
53 fBodyAccJerkstdX            
54 fBodyAccJerkstdY            
55 fBodyAccJerkstdZ            
56 fBodyAccJerkmeanFreqX       
57 fBodyAccJerkmeanFreqY       
58 fBodyAccJerkmeanFreqZ       
59 fBodyGyromeanX              
60 fBodyGyromeanY              
61 fBodyGyromeanZ              
62 fBodyGyrostdX               
63 fBodyGyrostdY               
64 fBodyGyrostdZ               
65 fBodyGyromeanFreqX          
66 fBodyGyromeanFreqY          
67 fBodyGyromeanFreqZ          
68 fBodyAccMagmean             
69 fBodyAccMagstd              
70 fBodyAccMagmeanFreq         
71 fBodyBodyAccJerkMagmean     
72 fBodyBodyAccJerkMagstd      
73 fBodyBodyAccJerkMagmeanFreq 
74 fBodyBodyGyroMagmean        
75 fBodyBodyGyroMagstd         
76 fBodyBodyGyroMagmeanFreq    
77 fBodyBodyGyroJerkMagmean    
78 fBodyBodyGyroJerkMagstd     
79 fBodyBodyGyroJerkMagmeanFreq
80 subject                     : subject 1-30
81 activity                    : walking, walking_upstairs, walking_downstairs, sitting, standing, laying



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variables estimated from these signals:
mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency


AVERAGES DATA SET:

Contains the average of each variable for each activity and each subject from tidydata

