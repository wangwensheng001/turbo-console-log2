chcp 65001 
set "lj=%~p0"
set "lj=%lj:\= %"
for %%a in (%lj%) do set wjj=%%a
echo %date:~0,4%年%date:~5,2%月%date:~8,2%日------commit-push------ >> ../../gitlog/%wjj%.commit.log 2>&1
git add . >> ../../gitlog/%wjj%.add.log 2>&1
git diff HEAD~1 HEAD --name-only >> ../../gitlog/%wjj%.add.log
git commit -m "%date:~0,4%年%date:~5,2%月%date:~8,2%日" >> ../../gitlog/%wjj%.commit.log 2>&1
git.exe push --progress "origin" >> ../../gitlog/%wjj%.commit.log 2>&1
git.exe push --progress "origin"
@REM pause