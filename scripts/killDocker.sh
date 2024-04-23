#!/bin/bash

cyan='\033[0;36m'
clear='\033[0m'

# Kill to job:

docker rm -f job

echo ""
echo -e  "docker ${cyan}stopped${clear}!!!"
echo ""
