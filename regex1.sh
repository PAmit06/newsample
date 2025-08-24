#!/bin/bash

#name="test_name"
read -rp "enter something: " data

if [[ $data= ~ ^[0-9]+$ ]]; then
  echo "its an integer"
else
  echo "its not an integer"
fi
  
