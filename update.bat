@echo off

call git add .
call git commit -m "Push"
call git push origin HEAD
echo Would you like to build local? 5 seconds until exit (Y/N)
CHOICE /T 5 /C YN /D N
set INPUT=%ERRORLEVEL%
if %INPUT%==1 echo Building local...&goto yes
if %INPUT%==2 goto no
:yes
call hugo server -w
goto no
:no
exit
