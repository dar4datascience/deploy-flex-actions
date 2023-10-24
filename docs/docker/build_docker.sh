#!/bin/bash

echo "Build the docker"

docker build . --progress=plain \
               --build-arg QUARTO_VERSION=1.2.335 \
               --build-arg CONDA_ENV=flex_dashboard \
               --build-arg PYTHON_VER=3.8 \
               -t dar4datascience/shiny-dockers:dev.0.0.0.1000

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push dar4datascience/shiny-dockers:dev.0.0.0.1000
else
echo "Docker build failed"
fi