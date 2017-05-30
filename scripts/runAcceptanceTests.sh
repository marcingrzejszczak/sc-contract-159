#!/bin/bash

set -e

echo -e "Checking Camden"
./gradlew clean checkMappings checkGeneratedTests -PverifierVersion=1.0.5.BUILD-SNAPSHOT  -PBOM_VERSION=Camden.BUILD-SNAPSHOT --stacktrace --refresh-dependencies

echo -e "\n\nChecking Dalston"
./gradlew clean checkMappings checkGeneratedTests -PverifierVersion=1.1.2.BUILD-SNAPSHOT -PBOM_VERSION=Dalston.BUILD-SNAPSHOT --stacktrace --refresh-dependencies
