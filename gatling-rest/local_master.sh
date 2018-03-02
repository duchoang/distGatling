#!/bin/bash
#
# Copyright 2016 Walmart Technology
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# 		http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

CUSTOM_ARGS="-Dmaster.port=2551 -Dserver.port=8080"
CUSTOM_ARGS="${CUSTOM_ARGS} -Dfile.repository=$(pwd)/files/"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.path=$(pwd)/gatling-charts-highcharts-bundle-2.3.0"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.logDirectory=$(pwd)/gatling-charts-highcharts-bundle-2.3.0/"
CUSTOM_ARGS="${CUSTOM_ARGS} -Djob.artifact=$(pwd)/gatling-charts-highcharts-bundle-2.3.0/bin/{0}.sh"
USER_ARGS="$@ ${CUSTOM_ARGS}"

JAVA_OPTS="-server -XX:+UseThreadPriorities  -XX:ThreadPriorityPolicy=42 -Xms512M -Xmx512M -Xmn100M -XX:+HeapDumpOnOutOfMemoryError -XX:+AggressiveOpts -XX:+OptimizeStringConcat -XX:+UseFastAccessorMethods -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -Djava.net.preferIPv4Stack=true -Djava.net.preferIPv6Addresses=false ${USER_ARGS}"


GATLING_CLASSPATH="target/gatling-rest-1.0.2-SNAPSHOT.jar"
# Run Gatling
java $JAVA_OPTS -jar ${GATLING_CLASSPATH} com.walmart.gatling.Application
