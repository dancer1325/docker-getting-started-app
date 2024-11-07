# Getting started
* application -- based on -- https://github.com/docker/getting-started

# Requirements
* [install Docker](https://docs.docker.com/get-started/get-docker/)

# Containerize an application
## Build the app's image
* 'Dockerfile'
  * 's location == root level 
* `docker build -t getting-started .`
  * From 'Dockerfile' -> builds a new image
  * `-t NameForTheImageToCreate`
  * `.` to look for the 'Dockerfile' in the path in which you run this command
  * `docker images getting-started` to check that the image has been created
## Start an app container
* `docker run -dp 127.0.0.1:3000:3000 getting-started`
  * 'getting-started' is the name of the image specified before to create it
  * `-d` == `--detach` runs the container in the background
  * `-p` == `--publish`
    * `-p HOSTAdress:CONTAINERPort`
      * '127.0.0.1:3000:3000' == container's port 3000 -- is published to -- host' 127.0.0.1:3000. Open in your browser 'localhost:3000' 
  * `docker ps` to check that a container is running your image