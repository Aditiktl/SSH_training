#!/bin/sh

mongo --eval "db = connect('mongodb://localhost/:27017/EmployeeDB')"

# do a simple harmless command of some sort

mongo --eval "db.stats()"  

RESULT=$?   # returns 0 if mongo eval succeeds

if [ $RESULT -ne 0 ]; then
    echo "mongodb not running"
    exit 1
else
    echo "mongodb running!"
fi
