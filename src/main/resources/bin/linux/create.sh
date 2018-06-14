#!/bin/bash -e

. ./_set-env.sh

java -jar $__LIQUIBASE_EXEC --changeLogFile=../../changesets/changelog-create.xml --logLevel=info update
java -jar $__LIQUIBASE_EXEC --changeLogFile=../../changesets/changelog-update.xml --logLevel=info update