#!/bin/bash

JAR="./hoptimator-operator-all.jar"

if [[ -f "$JAR" ]]; then
  java \
    --add-opens java.base/java.lang=ALL-UNNAMED \
    --add-opens java.base/java.util=ALL-UNNAMED \
    -jar $JAR "./test-model.yaml"
else
  echo "jar file not found; maybe forgot to build?"
fi
