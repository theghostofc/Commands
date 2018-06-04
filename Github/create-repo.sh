#!/bin/sh

# Populate these variables with your Github credentials
userId=""
password=""
repoName=""

curl -u '$userId:$password' https://api.github.com/user/repos -d '{"name":"$repoName"}'
