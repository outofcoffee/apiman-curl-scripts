#!/bin/bash

set -e

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/add-plugin1.json" \
	http://localhost:8080/apiman/plugins

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/add-plugin2.json" \
	http://localhost:8080/apiman/plugins

curl -X POST \
	-H "Content-Type: application/json" \
	-H "Authorization: Basic YWRtaW46YWRtaW4xMjMh" \
	--data-binary "@request/add-plugin3.json" \
	http://localhost:8080/apiman/plugins
