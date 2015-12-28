#!/bin/bash

set -e

echo "Configuring system"
bash ./add-plugins.sh
bash ./add-gateway.sh
bash ./add-organisation.sh

echo ""
echo "Adding services"
bash ./add-service1.sh
bash ./add-service2.sh
bash ./add-service3.sh

echo ""
echo "Done"
