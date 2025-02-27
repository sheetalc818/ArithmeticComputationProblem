#!/bin/bash -x

echo "======Arithmetic Computation & Sorting====="

#Dictionary
declare -A Computation

#Get Three Input from user
echo "Enter Three Values :"
read a b c

#Compute a + b * c and storing data into Dictionary
result=$(( $a+$b*$c ))
Computation[$((counter++))]=$result

#Compute a * b + c and storing data into Dictionary
result=$(( $a*$b+$c ))
Computation[$((counter++))]=$result

#Compute c + a / b and storing data into Dictionary
result=$(( $c+$a/$b ))
Computation[$((counter++))]=$result

#Compute a % b + c and storing data into Dictionary
result=$(( $a%$b+$c ))
Computation[$((counter++))]=$result

echo  "All results of Computation" ${Computation[@]}

#Reading data from Dictionary
for key in ${!Computation[@]}
do
	ComputationArray[((counter++))]=${Computation[$key]}
done
echo "Computation Array is::" ${ComputationArray[@]}

#Function to sort Dictionary in desc
function descendingSort()
{
	echo "Descending Order" $(printf "%s\n" ${ComputationArray[@]} | sort -nr)
}

function ascendingSort()
{
	echo "Ascendig Order" $(printf "%s\n" ${ComputationArray[@]} | sort -n)
}

#Calling Descending Sort function
descendingSort $ComputationArray

#Calling ascending Sort function
ascendingSort $ComputationArray
