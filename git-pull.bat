chcp 65001
md .vscode
set "lj=%~p0"
set "lj=%lj:\= %"
for %%a in (%lj%) do set wjj=%%a
echo %date:~0,4%年%date:~5,2%月%date:~8,2%日------pull------ >> ../../gitlog/%wjj%.pull.log 2>&1
git.exe pull --progress -v --no-rebase "origin" >> ../../gitlog/%wjj%.pull.log 2>&1

@REM pause