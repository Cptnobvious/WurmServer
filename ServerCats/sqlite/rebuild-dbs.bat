@ECHO OFF
ECHO This script deletes and recreates all Wurm databases in the current directory from the database
ECHO creation and insertion scripts.
ECHO Call with -noconfirm to skip confirmation
ECHO Call with -nopause to skip the pause at the end

SETLOCAL
SET PAUSE=1
SET CONFIRM=1
FOR %%G IN (%*) DO (
  IF /I "%%G" == "-nopause" (
    SET PAUSE=0
  ) ELSE (
    IF /I "%%G" == "-noconfirm" (
      SET CONFIRM=0
    )
  )
)

IF /I "%CONFIRM%" == "0" GOTO REBUILD
SET /P AREYOUSURE=Are you sure you want to delete and recreate all dbs (y/[n])?
IF /I "%AREYOUSURE%" NEQ "y" GOTO END

:REBUILD
ECHO Deleting databases...
FOR %%G IN (wurmcreatures,wurmdeities,wurmeconomy,wurmitems,wurmlogin,wurmlogs,wurmplayers,wurmtemplates,wurmzones) DO (
  IF EXIST %%G.db del %%G.db
  IF NOT EXIST %%G.sql (
    ECHO "ERROR: Creation script %%G.sql does not exist"
  ) ELSE (
    sqlite3 -init %%G.sql %%G.db ""
    IF NOT EXIST insert%%G.sql (
      ECHO "ERROR: Insertion script insert%%G.sql does not exist"
    ) ELSE (
      sqlite3 %%G.db < insert%%G.sql
    )
    IF NOT EXIST %%G.db ECHO ERROR: %%G.db was not rebuilt
  )
)
ECHO Rebuild completed.
IF /I "%PAUSE%" NEQ "1" GOTO :END
pause

:END
ENDLOCAL
