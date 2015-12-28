#!/bin/bash

set -e

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/add-gateway.json" \
	http://localhost:8080/apiman/gateways
