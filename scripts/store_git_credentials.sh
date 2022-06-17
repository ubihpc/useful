#!/bin/bash

# Store git credentials for a day
git config --global credential.helper 'cache --timeout=86400'
