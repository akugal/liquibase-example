#!/bin/bash -e

. ./_set-env.sh

java -jar $__LIQUIBASE_EXEC "$@"