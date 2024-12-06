#! /bin/bash
set -e
filename=".env"
touch $filename || true
truncate -s 0 "$filename"
echo "CLIENT_ENV=$CLIENT_ENV" >> "$filename"
echo "DOCKERHUB_USERNAME=$DOCKERHUB_USERNAME" >> "$filename"
echo "DOCKERHUB_PASSWORD=$DOCKERHUB_PASSWORD" >> "$filename"
echo "envkey_SOME_API_KEY=$envkey_SOME_API_KEY" >> "$filename"
echo "some_other_variable=$some_other_variable" >> "$filename"