#!/bin/bash

num=10
if [ $num -gt 5 ]
then
  echo "number greater than 5"
fi

age=45
if [ $age -ge 10 ] && [ $age -lt 50 ]
then
  echo "age within range"
fi

if [ -e "testif.sh" ]
then
  echo "file exists"
fi


