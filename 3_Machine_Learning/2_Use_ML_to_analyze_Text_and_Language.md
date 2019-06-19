# Use ML to automatically analyze text or language data

### Why do this
 - You want to analyze entities found in text or natural language via machine learning models
 - You would like GCP to create the best-fit ML model for your data

### What is this
 - Ability to use ML on text or natural language data without manually creating/training an ML model
 - Simply provide the natural language data, labels and pay for ML training hours on GCP
 - Product name is AutoML for Natural Language

### Key considerations
 - ML model accuracy improves with billable training time
 - Google uses auto-grid and hyperparameter clusters to select, train and tune the best ML model 
 - Alternatively you can use GCP Natural Language API (if returned labels fit your use case)

### How to do this
 - Provide the natural language data
 - Provide the labels
 - Configure the desired training time

### How to verify you've done it
 - Review the model quality results
 - Test model accuracy with new data
 - Add more data and/or add more training hours and repeat until your quality goal is met

### Other Things to Know
 - AutoML natural language models can NOT be exported at this time
 - GCP automatically selects the model type and parameters and then deploys the model for you
 - AutoML also works with langauge translation

### How to learn more
 - Link to [Using AutoML for Natural Language on GCP](https://cloud.google.com/natural-language/)
