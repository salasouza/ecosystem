# Ecosystem

Docker enviroment

# Instructions

``` sh
    docker build -f Dockerfile -t python_local .  # build dockerfile

    docker run --rm --name job -p 8888:8888 -v $(pwd)/:/project -d python_local:latest # create container

    docker ps                 # see docker

    docker exec -it job bash  # enter in docker

    docker rm -f job          # kill docker

```
