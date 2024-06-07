chcp 65001
set "lj=%~p0"
set "lj=%lj:\= %"
for %%a in (%lj%) do set wjj=%%a
echo %date:~0,4%年%date:~5,2%月%date:~8,2%日------pull-recycle------ >> ../../gitlog/%wjj%.cycle.log 2>&1
setlocal enabledelayedexpansion
for /l %%i in (1 1 10) do (
    set time_now=%time:~0,8%
    echo %date:~0,4%年%date:~5,2%月%date:~8,2%日------pull-recycle------ >> ../../gitlog/%wjj%.cycle.log 2>&1
    @REM echo !time! >> ../../gitlog/%wjj%.cycle.log 2>&1
    @REM echo time_now:%time_now%
    call ./git-commit-push.bat
    @REM ping 123.45.67.89 -n 1 -w 10000 > nul
    timeout 3600 >nul
)
@REM pause