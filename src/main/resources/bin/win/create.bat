@echo off
call _set-env.bat

echo Performing test/validation run (without real database modification) ...

java -jar %LIQUIBASE_EXEC% --changeLogFile=../../changesets/changelog-create.xml --logLevel=info validate
java -jar %LIQUIBASE_EXEC% --changeLogFile=../../changesets/changelog-update.xml --logLevel=info validate

@CHOICE /C 12 /M	"	Do you want to perform a real run? Please use No if validation failed: [1] Yes or [2] No"

IF ERRORLEVEL 2 GOTO cancel
IF ERRORLEVEL 1 GOTO create

exit /b 0

:create
    echo Performing database update ...

    java -jar %LIQUIBASE_EXEC% --changeLogFile=../../changesets/changelog-create.xml --logLevel=info update
    java -jar %LIQUIBASE_EXEC% --changeLogFile=../../changesets/changelog-update.xml --logLevel=info update

    GOTO eof

:cancel
    echo Cancelling ...
    GOTO eof

:eof
exit /b 0