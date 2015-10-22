@ECHO OFF
ECHO This script exports all wurm databases in the specified directory
ECHO Call with -nopause to skip the pause at the end

SETLOCAL
SET PAUSE=1
SET DIR=%1
IF /I "%1" == "-nopause" (
  SET PAUSE=0
  SET DIR=%2
)
IF "%DIR%" == "" (
  SET DIR=.
)

REM Pre-check
REM
IF NOT EXIST "%DIR%" (
  ECHO "Can't find directory %DIR%"
  GOTO ENDEXPORT
)
SET DB_NAMES=wurmcreatures,wurmdeities,wurmeconomy,wurmitems,wurmlogin,wurmlogs,wurmplayers,wurmtemplates,wurmzones
REM Don't clobber existing files
FOR %%G IN (%DB_NAMES%) DO (
  IF EXIST "%DIR%\%%G.export.sql" (
    ECHO "ERROR: Existing schema %%G.export.sql"
    GOTO ENDEXPORT
  )
  IF EXIST "%DIR%\insert%%G.export.sql" (
    ECHO "ERROR: Existing data insert%%G.export.sql" 
    GOTO ENDEXPORT
  )
  IF NOT EXIST "%DIR%\%%G.db" (
    ECHO "ERROR: Can't find %DIR%\%%G.db"
    GOTO ENDEXPORT
  )
  IF NOT EXIST "%~p0export%%G.sql" (
    ECHO "ERROR: Can't find export script %~p0export%%G.sql"
    GOTO ENDEXPORT
  )
)

ECHO Exporting databases...
FOR %%G IN (%DB_NAMES%) DO (
  echo Exporting %DIR%\%%G.db...
  sqlite3 "%DIR%\%%G.db" < "%~p0export%%G.sql"
)
:ENDEXPORT
IF /I "%PAUSE%" NEQ "1" GOTO :END
pause

:END
ENDLOCAL
