#!/bin/bash

cyan='\033[0;36m'
clear='\033[0m'

# Run this code to create container

docker run --rm --name job -p 8888:8888 -v $(pwd)/:/project -d python_local:latest

echo ""
echo -e "Container created ${cyan}successfully${clear}!!!"
echo ""
