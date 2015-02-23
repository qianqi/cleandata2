Description of run_analysis.r script
1. Input train data set and test data set
2. Merge train data set by cbind command
3. Merge test data set by cbind command
4. Merge train data set and test data set by rbind command to generate a data set "m"
5. Input features.txt file, rename the column name of variables in data set "m" using feature.txt file information
6. Extract columns that contain "std()" or "mean()" using grep command, then generate a new data set "m2"
7. Input "activity_labels.txt" file, connect labels with activity names that provided by "activity_labels.txt" file using merge function. Generate a new data set "m3", then remove the column of activity labels, since m3 already contains a column of activity name.
8. Generate a independent tidy data set with the average of each variable for each activity and each subject by using function in package (dplyr). Save the new data set as "final.txt".
 


