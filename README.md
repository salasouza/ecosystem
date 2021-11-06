# Ecosystem

Docker environment

## Instructions for docker

``` sh
    docker build -f Dockerfile -t python_local .  # build dockerfile

    docker run --rm --name job -p 8888:8888 -v $(pwd)/:/project -d python_local:latest # create container mapeando a pasta project

    # docker run --rm --name job -p 8888:8888  -d python_local:latest # create container -->
    # utilizando arquivos internos da imagem docker

    docker ps                 # see docker

    docker exec -it job bash  # enter in docker

    docker rm -f job          # kill docker
```
## Instructions for docker-compose

``` sh
    docker-compose up -d          # Creating job

    docker-compose ps             # see docker-compose

    docker-compose logs job       # see job

    docker-compose exec job bash  # To execute docker-compose
```

# Instructions for Makefile

For better use of the Docker see the instructions in the makefile file.
