#!/bin/bash

if [ -f names.txt ]; then  # If names.txt is a regular file
  echo "regular file"
fi

if [ -d ./ ]; then  # If current dir is a directory
  echo "it's directory"
fi

if [ -e names.txt ]; then  # If names.txt exists
  echo "File exists"
fi

if [ -r names.txt ]; then  # If names.txt is readable
  echo "u can read"
fi
if [ -w names.txt ]; then  # If names.txt is writable
  echo "u can write"
fi
if [ -x names.txt ]; then  # If names.txt is executable (was -e, should be -x) [cite: 6]
  echo "u can execute"
fi

if [ logs.txt -ot names.txt ]; then  # If logs.txt is older than names.txt
  echo "logs"
else
  echo names
fi

if [ $# -ge 1 ]; then  # If at least 1 argument
  echo "I am happy"
  echo $1
elif [ -n "$2" ] && [ -z "$2" ]; then  #  This is always false
  echo " I am NOT happy"
fi

if [ -z names.txt ]; then  # If "names.txt" is empty (wrong check)
  echo "Nothing inside"
fi
file=$(cat name.txt 2>> error.txt)  #  Get file content, redirect errors
if [ -z "$file" -a 2 -ge 1 ]; then  # If file is empty and 2 >= 1
  echo "Nothing inside"
else
  echo "Where's the fuck did u find it?"
fi
