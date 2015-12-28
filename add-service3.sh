#!/bin/bash

echo ""
echo "Adding service3"

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service3/add-service.json" \
	http://localhost:8080/apiman/organizations/example/services

curl -X PUT \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service3/configure-service.json" \
	http://localhost:8080/apiman/organizations/example/services/logout/versions/1.0

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service3/add-policy.json" \
	http://localhost:8080/apiman/organizations/example/services/logout/versions/1.0/policies

# publish
curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/service3/publish-service.json" \
	http://localhost:8080/apiman/actions
