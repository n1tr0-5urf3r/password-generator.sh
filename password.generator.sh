#!/bin/bash

# PASSWORDGENERATOR

# Parameter
# $1 password length
#

printUsage(){
        echo -e "\nUsage: "
       echo "./password-generator.sh length(int)"
        echo -e "\n"
}

# Test if all parameter available
if [ "$#" -ne 1 ]
        then
                printUsage
                echo "Missing or too many arguments"
                exit 1
fi

chars=(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 1 2 3 4 5 6 7 8 9 0 )
availableChars=${#chars[@]}

for i in $(seq 1 $1); do
        nextChar=$(($RANDOM % $availableChars))
	password="$password${chars[$nextChar]}"
done
echo $password
