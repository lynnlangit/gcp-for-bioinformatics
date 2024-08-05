# Dockerfiles

Commands and examples for bioinformatics tools and scripts, including Dockerfiles and links to Dockerfiles in other repos  
- DeepCell
- Ilastik
- Cell Profiler
- spaFlow

If you just want to pull the containers, go to DockerHub --> https://hub.docker.com/repositories/lynnlangit

## In Cloud Shell

build in Docker from Cloud Shell, push to DockerHub  
```
docker build -t lynnlangit/<container-name>:latest . 
docker login
docker push lynnlangit/<container-name>:latest
```

## In CloudBuild (from Cloud Shell)

build using Cloud Shell from Cloud Shell, push to GCP Artifact Registry  
review security scan in AF  
```
gsutil ls # quick auth
gcloud auth configure-docker us-central1-docker.pkg.dev
gcloud builds submit --tag us-central1-docker.pkg.dev/genomics-compute/images/<container-name> --machine-type=E2_HIGHCPU_8
```

## Docker Commands

test container image in Cloud Shell
```
gsutil ls # quick auth
gcloud auth configure-docker us-central1-docker.pkg.dev
docker pull us-central1-docker.pkg.dev/genomics-compute/images/<container-name>:latest #pull
docker image list # list
```
run  
```
docker run -it 5758
docker run -it --rm -v /path/to/your/scripts:/app my-data-science-image your_script.R     # For R scripts
docker run -it --rm -v /path/to/your/scripts:/app my-data-science-image your_script.py    # For Python scripts
```
```
// Run CellProfilerassumes you have done `export CP_VERSION="x.y.z"`  
// Note, the following line is insecure.  
xhost +local:root  
docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro cellprofiler:${CP_VERSION} ""  
```

delete image
```
docker image rm fed5 --force # delete
```
