#!/bin/bash

docker stop reactcontainer

docker rm reactcontainer

docker build -t mynewreactapp .
