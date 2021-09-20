# Ecosystem

Docker enviroment

# Instructions

``` sh
    docker build -f dockerfile.local -t python_local .

    docker run --rm --name algoritmos -p 8888:8888 -v $(pwd)/:/project -d python_local:latest

    docker ps  # ver o que tem

    docker exec -it algoritmos bash  # entra

    docker rm -f algoritmos

```
