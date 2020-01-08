#!/bin/bash -x

echo "======Arithmetic Computation & Sorting====="

#Get Three Input from user
echo "Enter Three Values :"
read a b c

#Compute a + b * c
result=$(( $a+$b*$c ))

#Compute a * b + c
result=$(( $a*$b+$c ))

