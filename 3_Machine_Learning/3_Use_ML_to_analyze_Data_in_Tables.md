# Use ML to automatically analyze data in tables

### Why do this
 - You want to analyze structured data stored in tables via machine learning models
 - You would like GCP to create the best-fit ML model for your data

### What is this
 - Ability to use ML on tabular data without manually creating/training an ML model
 - Simply provide the tabular data, labels and pay for ML training hours on GCP

### Key considerations
 - ML model accuracy improves with billable training time
 - Google uses auto-grid and hyperparameter clusters to select, train and tune the best ML model 

### How to do this
 - Provide the data
 - Provide the labels
 - Configure the desired training time

### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and/or add more training hours and repeat until your quality goal is met

### Other Things to Know
 - AutoML Table models can NOT be exported at this time
 - GCP automatically selects the model type and parameters and then deploys the model for you
 - AutoML Tables automates feature engineering on a wide range of tabular data primitives — such as numbers, classes, strings, timestamps, and lists 
 - AutoML Tables helps you detect and take care of missing values, outliers, and other common data issues

### How to learn more
 - Link to [Using AutoML for Tables on GCP](https://cloud.google.com/automl-tables/)