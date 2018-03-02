#!/usr/bin/env bash

MASTER_AKKA_IP="192.168.1.4"
CUSTOM_ARGS="-Dakka.contact-points=${MASTER_AKKA_IP}:2551 -Dserver.port=8090 -Dactor.port=2556"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.path=$(pwd)/gatling-charts-highcharts-bundle-2.3.0"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.logDirectory=$(pwd)/gatling-charts-highcharts-bundle-2.3.0/"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.artifact=$(pwd)/gatling-charts-highcharts-bundle-2.3.0/bin/{0}.sh"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.jobDirectory=$(pwd)/files/"

/bin/bash agent.sh ${CUSTOM_ARGS}
