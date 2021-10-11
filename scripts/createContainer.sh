#!/bin/bash

# Run this code to create container

docker run --rm --name job -p 8888:8888 -v $(pwd)/:/project -d python_local:latest

echo ""
echo "Container created successfully"
echo ""
