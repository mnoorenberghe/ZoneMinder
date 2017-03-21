#!/bin/bash

API_URL="http://localhost:32768/api/host/login.json"
AUTH_HASH="0d8e6055b57e115f36680b906cf4151e"

function fetch {
  echo -n "$1:"
  curl "$1"
  echo
  echo
}

echo "no auth params"
fetch "$API_URL"

echo "username + password hash"
fetch "$API_URL?user=admin&pass=*4ACFE3202A5FF5CF467898FC58AAB1D615029441"

echo "username + password plaintext"
fetch "$API_URL?user=admin&pass=admin"

echo 'auth=...'
fetch "$API_URL?auth=$AUTH_HASH"
