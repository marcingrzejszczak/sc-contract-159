#!/bin/bash

set -e

echo -e "Checking Camden"
./gradlew clean checkMappings checkGeneratedTests -PverifierVersion=1.0.3.BUILD-SNAPSHOT -PBOM_VERSION=Camden.BUILD-SNAPSHOT --stacktrace

echo -e "\n\nChecking Dalston"
./gradlew clean checkMappings checkGeneratedTests -PverifierVersion=1.1.0.BUILD-SNAPSHOT -PBOM_VERSION=Dalston.BUILD-SNAPSHOT --stacktrace