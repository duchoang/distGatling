#!/bin/bash

wget https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/2.3.0/gatling-charts-highcharts-bundle-2.3.0-bundle.zip

# extract folder gatling-charts-highcharts-bundle-2.3.0 to master + agent node
unzip -o gatling-charts-highcharts-bundle-2.3.0-bundle.zip -d gatling-rest/
unzip -o gatling-charts-highcharts-bundle-2.3.0-bundle.zip -d gatling-agent/
