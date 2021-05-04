#!/usr/bin/bash

#Script to run automated sql queries

#Declaring mysql DB connection 

MASTER_DB_USER='aditiktl'
MASTER_DB_PASSWD='Adivishu'
MASTER_DB_PORT=3306
MASTER_DB_HOST='mysql.localhost'
MASTER_DB_NAME='aditidb'

#Prepare sql query

SQL_Query='select * from EMPLOYEE '

#mysql command to connect to database

MYSQL -u$MASTER_DB_USER -p$MASTER_DB_PASSWD -P$MASTER_DB_PORT -h$MASTER_DB_HOST -D$MASTER_DB_NAME <<EOF 
$SQL_Query
EOF
echo "End of script"