#!/bin/bash

DATA_DIR=data
DATA_FILE=$DATA_DIR/data_file

mkdir $DATA_DIR

FILE_COUNTER=0

while [ $FILE_COUNTER -lt 100 ]; do
    LINE_COUNTER=0
    while [ $LINE_COUNTER -lt 10000 ]; do
        echo "Found first.last@example.com sending email to my.name@example.com" >> $DATA_FILE.$FILE_COUNTER.txt
        let LINE_COUNTER=LINE_COUNTER+1 
    done
    let FILE_COUNTER=FILE_COUNTER+1
done