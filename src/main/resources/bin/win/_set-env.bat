set LIQUIBASE_JAR=../../lib/liquibase-core.jar
set DRIVER_JAR=../../lib/mysql-connector-java.jar
set DRIVER_NAME=com.mysql.jdbc.Driver
set DATABASE_PROPERTIES=../../config/database.properties

set LIQUIBASE_EXEC=%LIQUIBASE_JAR% --defaultsFile=%DATABASE_PROPERTIES% --driver=%DRIVER_NAME% --classpath=%DRIVER_JAR%
