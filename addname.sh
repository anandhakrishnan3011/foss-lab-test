#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
fi
if [ -f $1 ]
then
    echo "The file exists"
else
  echo "File not exists"
fi
if grep -qF "$2" ulist 
 then
   echo "name already exists"
   else
    echo "name does not exist"
    echo "$2">>ulist
 fi
