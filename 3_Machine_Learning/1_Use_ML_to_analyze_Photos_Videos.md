# Use ML to automatically analyze items in Photos or Videos

### Why do this
 - You want to analyze items found in photos or videos via machine learning models
 - You would like GCP to create the best-fit ML model for your data

### What is this
 - Ability to use ML on photo/video data without manually creating/training an ML model
 - Simply provide the photo/video data, labels and pay for ML training hours on GCP
 - Product names are AutoML for Vision or AutoML for Video Intelligence. Product architecture shown below

 [![auto-ml-arch](/images/auto-ml-arch.png)]() 

### Key considerations
 - ML model accuracy improves with billable training time
 - Google uses auto-grid and hyperparameter clusters to select, train and tune the best ML model 
 - Alternatively you can use GCP Vision API or Video API (if returned labels fit your use case)
 -- try the API in a browser [here](https://cloud.google.com/vision/).  Shown below is a comparision (for Vision) of the two types of products

[![automl](/images/automl.png)]() 

### How to do this
 - Provide the photo and video data
 - Provide the labels
 - Configure the desired training time

Link to 4 minute screencast - [AutoML Vision on GCP](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-the-cloud-vision-api-for-images)
[![automl-vision-api](/images/automl-vision-api.png)](https://www.linkedin.com/learning/google-cloud-platform-for-machine-learning-essential-training/predict-via-the-cloud-vision-api-for-images) 

### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and/or add more training hours and repeat until your quality goal is met

### Other Things to Know
 - AutoML Photo/Videos models can NOT be exported at this time
 - GCP automatically selects the model type and parameters and then deploys the model for you

### How to learn more
 - Link to [Using AutoML for Photos/Video on GCP](https://cloud.google.com/automl/)