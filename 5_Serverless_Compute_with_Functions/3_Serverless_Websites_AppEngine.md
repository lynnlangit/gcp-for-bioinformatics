# Serverless Websites with AppEngine

### Why do this
 CREATE a serverless website on GCP quickly

### What is this
 - USE Google AppEngine to create a serverless website using common website design/deployment patterns
 - AppEngine is one of first services released for GCP and there are many tutorials and code examples on the web

### Key considerations
 - CHOOSE either the [standard](https://cloud.google.com/appengine/docs/standard/) or [flex](https://cloud.google.com/appengine/docs/flexible/) edition of AppEngine
 - USE AppEngine support many programming languages - [verify your preferred language (and version)](https://cloud.google.com/appengine/kb/) is supported

### How to do this
 - HOST a static website using GCP AppEngine tutorial - [link](https://cloud.google.com/appengine/docs/standard/python/getting-started/hosting-a-static-website)
 - CREATE a guestbook web application using the GCP AppEngine tutorial - [link](https://cloud.google.com/appengine/docs/standard/python/getting-started/creating-guestbook)

### How to verify you've done it
 - NAVIGATE to the website using a browser and test web page functionality
 - REVIEW the Cloud logs to verify the result of the web page function invocations 

### Other Things to Know
 - If hosting a static website, you could also consider serving the page content directly from a Cloud Storage bucket - [link](https://cloud.google.com/storage/docs/hosting-static-website)
 - Serverless autoscales (to your GCP account limits) by default
 - GAE (AppEngine) is a serverless service which can be used to host web sites and support common programming language.  Python example [here](https://cloud.google.com/appengine/docs/python/)

### How to learn more
 - 📘 Link to [choosing a serverless option](https://cloud.google.com/serverless-options/)
 - 📺 Link to "Use AppEngine Flex to host a WordPress site" 2 minute video - [link](
https://www.youtube.com/watch?v=1h8jDeYQpPY)
 
