#!/bin/bash

find ./ -name "*.txt" -type f -exec cp {} ./copy \;
find ./ -name "*.sh" -type f -exec cp {} ./copy \;
