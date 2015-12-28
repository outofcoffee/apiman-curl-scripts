#!/bin/bash

set -e

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/add-organisation.json" \
	http://localhost:8080/apiman/organizations
