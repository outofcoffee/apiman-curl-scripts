#!/bin/bash

echo ""
echo "Adding service1"

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service1/add-service.json" \
	http://localhost:8080/apiman/organizations/example/services

curl -X PUT \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service1/configure-service.json" \
	http://localhost:8080/apiman/organizations/example/services/login/versions/1.0

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service1/add-policy.json" \
	http://localhost:8080/apiman/organizations/example/services/login/versions/1.0/policies

# publish
curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service1/publish-service.json" \
	http://localhost:8080/apiman/actions
