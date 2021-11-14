#!/bin/bash

apt-get update -o Dir::Etc::sourcelist="sources.list.d/$1.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"

