#!/bin/bash

cyan='\033[0;36m'
clear='\033[0m'

# See logs for jupyter

docker logs job

echo ""
echo -e "Logs created ${cyan}successfully${clear}!!!"
echo ""
