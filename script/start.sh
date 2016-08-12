#!/bin/bash

bundle check || bundle install; rm /app/tmp/pids/server.pid; rails server -b 0.0.0.0