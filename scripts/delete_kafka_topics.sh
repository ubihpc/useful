#!/usr/bin/bash

# Requires Kafka commands to be in $PATH

for i; do
	kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic $i
done
