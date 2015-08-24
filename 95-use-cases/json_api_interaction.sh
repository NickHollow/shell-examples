#!/bin/bash

api_endpoint='https://en.wikipedia.org/w/api.php?action=query&list=random&rnlimit=10&rnnamespace=0&format=json'

[[ $(which jq) ]] || { echo 'jq must be installed.'; exit 1 ; }

# to make an HTTP request in the shell, we use curl
curl -s $api_endpoint | jq -r '.query .random [] .title'