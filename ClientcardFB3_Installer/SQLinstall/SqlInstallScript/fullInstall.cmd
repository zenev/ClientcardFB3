echo "Must run this as administrator"
echo "IMPORTANT: make sure your username isn't the same as your computer name"

download.cmd

databaseSetup.cmd

START cmd /k databaseSetup.cmd