# SQL Database Backup Script

This script allows you to easily backup your SQL database using mysqldump. Additionally, we will guide you on how to automate the backup process using Windows Task Scheduler.

## Prerequisites

Before using this script, make sure you have the following:

- [XAMPP](https://www.apachefriends.org/index.html) or any other MySQL installation.
- Basic understanding of using the command line.

## Usage

Follow the steps below to use the script and backup your SQL database:

1. Open a text editor and create a new file.
2. Copy and paste the script provided below into the file:

```shell
@echo off
set db_name=INSERTNAMEOFDATABASEHERE
set user=root
set backup_dir=INSERT FILE PATH HERE
set backup_file=%backup_dir%\%db_name%_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%%time:~6,2%.sql

if not exist "%backup_dir%" mkdir "%backup_dir%"

"C:\xampp\mysql\bin\mysqldump.exe" -u %user% --databases %db_name% > "%backup_file%" 2> "%backup_dir%\error.txt"
```

## 1. Save the file with a .bat extension, for example, backup_script.bat.
## 2. Replace the placeholders in the script with your own values:
## 3. ```INSERTNAMEOFDATABASEHERE:``` Replace this with the name of your database.
## 4. ```INSERT FILE PATH HERE:``` Replace this with the directory path where you want to save the backup files.

# Running the Backup Script
To run the backup script manually, follow these steps:

Open a command prompt by pressing Win + R, typing cmd, and pressing Enter.
Navigate to the directory where you saved the backup_script.bat file using the cd command. For example, ```cd C:\Scripts.```
Run the script by typing ```backup_script.bat``` and pressing Enter.
The script will execute, and you will find the backup file saved in the specified directory.
Automating Backup with Windows Task Manager
To automate the backup process using Windows Task Manager, follow these steps:

Open Windows Task Manager by pressing Win + R, typing taskschd.msc, and pressing Enter.
In the Task Scheduler window, click on Create Basic Task in the right sidebar.
Give your task a name and description, then click Next.
Choose the frequency (e.g., daily, weekly, monthly) and set the desired backup schedule. Click Next.
Select Start a program and click Next.
Click Browse and navigate to the directory where you saved the backup_script.bat file. Select the file and click Open.
Click Next and then Finish to complete the task creation.
The task will now appear in the Task Scheduler Library and run according to the schedule you set.
Congratulations! You have successfully set up automatic backups using the Windows Task Manager.

# Notes
Ensure that the mysqldump.exe path in the script points to the correct location on your system. Modify it if necessary.
Make sure the user specified in the script has sufficient privileges to access and backup the specified database.
It is recommended to periodically verify the backups to ensure they are working as expected.

 
# License
This script is released under the MIT License. Feel free to modify and distribute it according
