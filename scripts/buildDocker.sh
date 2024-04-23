#!/bin/bash

cyan='\033[0;36m'
clear='\033[0m'

# Run this code to build Docker python_local

docker build -f Dockerfile -t python_local .

echo ""
echo -e "Docker created ${cyan}successfully${clean}!!!"
echo ""
