@echo off
set db_name=INSERTNAMEOFDATABASEHERE
set user=root
set backup_dir=INSERT FILE PATH HERE
set backup_file=%backup_dir%\%db_name%_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%%time:~6,2%.sql

if not exist "%backup_dir%" mkdir "%backup_dir%"

"C:\xampp\mysql\bin\mysqldump.exe" -u %user% --databases %db_name% > "%backup_file%" 2> "%backup_dir%\error.txt"


