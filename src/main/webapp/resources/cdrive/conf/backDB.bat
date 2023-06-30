
set dt=%date:~7,2%-%date:~4,2%-%date:~10,4%_%time:~0,2%_%time:~3,2%_%time:~6,2%

echo Backup database.....
echo %dt%
C:
cd C:\Program Files\MariaDB 10.6\bin 

echo Creating dir if not exist
if not exist "C:\brisid\databasebackup" mkdir C:\webtis\databasebackup

setlocal
set LogPath=C:\brisid\log\
set LogFileExt=.log
set LogFileName=Daily Backup%LogFileExt%
::use set MyLogFile=%date:~4% instead to remove the day of the week
::[COLOR="DarkRed"]set MyLogFile=%date%
::set MyLogFile=%MyLogFile:/=-%[/COLOR]
set MyLogFile=%MyLogFile%
set MyLogFile=%LogPath%%MyLogFile%%LogFileName%
::Note that the quotes are REQUIRED around %MyLogFIle% in case it contains a space
IF NOT Exist "%LogPath%" mkdir %LogPath%
If NOT Exist "%MyLogFile%" goto:noseparator
Echo.>>"%MyLogFile%"
Echo.========================================================================ITALIAWorks========================================>>"%MyLogFile%"
:noseparator
::echo.%Date% >>"%MyLogFile%"
::echo.%Time% >>"%MyLogFile%"
echo.%Date% %Time% Preparing for backup... >>"%MyLogFile%"
echo.%Date% %Time% starting backup... >>"%MyLogFile%"

mysqldump.exe -e -uroot -poctober181986* -hlocalhost brisid > C:\brisid\databasebackup\brisid.sql

echo.%Date% %Time% Ended... >>"%MyLogFile%"