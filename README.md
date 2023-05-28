# Samsung
final project

Unzipped downloaded files.
Copied X_train to trainingdata, y_train to trainingactivity, subject_train to trainingsubject, X_test to testdata, y_test to testactivity, subject_test to testsubject, activity_labels to activitylabels, and features to datanames (all in my R subdirectory).
Read the eight files into tables of the same names.
Attached the column names from datanames to trainingdata and testdata. 
Selected columns from trainingdata and testdata containing “mean()” or “std()” into trainingdata2 and testdata2.
Joined trainingnames, trainingactivity and trainingdata2 into trainingdata3. Joined testnames, testactivity and testdata2 into testdata3. 
Concatenated trainingdata3 and testdata3 into finaldata.
Renamed columns from “V1” and “V2” to “participant” and “activity” in finaldata.
Mapped values of activity to names of activity using activitylabels and placed result into finaldata2.
Created table of means of last 66 columns grouped by first two columns (participant and activity).
Exported finaldatasum to finaldatasum.txt.
Exported datanames to CodeBook.md
Saved program as run_analysis.R.
