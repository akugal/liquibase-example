PROJECT VERSION=${project.version}
-----------------------------------------------------

Database schema management (create, drop schema) and user management is out of scope this manual
and should be performed by operation or configuration team if needed.

Setup
-----

- Ensure java is install on running machine
- Create in config directory database.properties file based 
on database.properties.template and setup database connection properties.

Scripts
-------

In bin folder there are scripts to manage database that you configure through properties file:

- _set-env
    Used to setup environment (it called from other scripts - do not call it directly)
- _custom
    Used for custom database management (DO NOT USE IT WITHOUT LIQUIBASE UNDERSTANDING)

- create
    Used to synchronize target EMPTY database with existing changesets (schema should be already exists but must be empty)
    After executing check all script output for errors
- update
    Used to synchronize target database with existing changesets
    assumed that database already exists in some state from previous releases or synchronizations
    After executing check all script output for errors - if errors exists - rollback database with previously created dump

NOTE:
Run each script with saving execution output to some file (that file will be helpful if some errors occurred)
It's recommended to make full database backup before any usage.