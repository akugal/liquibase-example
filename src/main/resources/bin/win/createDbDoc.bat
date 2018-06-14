call _set-env.bat

REM Create javaDoc style documentation about changes
java -jar %LIQUIBASE_EXEC% --changeLogFile=../../changesets/changelog-update.xml --logLevel=info dbDoc ./docs/dbdoc
