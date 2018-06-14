#!/bin/bash -e

__LIQUIBASE_JAR=../../lib/liquibase-core.jar
__DRIVER_JAR=../../lib/mysql-connector-java.jar
__DRIVER_NAME=com.mysql.jdbc.Driver
__DATABASE_PROPERTIES=../../config/database.properties

__LIQUIBASE_EXEC="$__LIQUIBASE_JAR --defaultsFile=$__DATABASE_PROPERTIES --driver=$__DRIVER_NAME --classpath=$__DRIVER_JAR"