#!/bin/bash

echo "Hello World"

# Single Line Comment

: '
This is a Multi Line
comment
'

# Reading Input

echo -n "Enter Something:"
read something
# Access variables by prefixing them with a $ sign
echo "You Entered: $something"

# Conditionals - If, elif and else

echo -n "Enter a number: "
read num
# -gt means greater than <used for comparison>
if [[ $num -gt 10 ]]
then
echo "Number is greater than 10."
elif [[ $num -eq 10 ]]
then
echo "Number is equal to 10."
else
echo "Number is less than 10."
fi

# Conditionals - Switch - case

read INPUT_STRING
case $INPUT_STRING in
    hello)
        echo "Hello yourself!"
        # ;; is equivalent to break
        ;;
    bye)
        echo "See you again!"
        ;;
    # *) is equivalent to default
    *)
        echo "Sorry, I don't understand"
        ;;
esac

# While loops

i=0

while [ $i -le 2 ]
do
echo Number: $i
((i++))
done

# For loops

for((counter=1; counter<=10; counter++ ))
do
echo -n "$counter "
done
printf "\n"

# Command Line arguments

echo "Total arguments : $#"
echo "First Argument = $1"
echo "Second Argument = $2"


# String Operations

# Concatenation
string1="VIT"
string2="LUG"
ccstring=$string1$string2
echo "$ccstring is the best club in $string1!"

# Slicing
str="VITLUG is the best club in VIT!"
subStr=${str:0:23}
echo $subStr

# Functions

function Greet() {
str="Hello $name, hope you are learning new stuff!"
echo $str
}

echo "-> what's your name?"
read name

val=$(Greet)
echo -e "-> $val"

# Creating Directories from Bash Scripts

: '
#!/bin/bash
echo -n "Enter directory name ->"
read dir
if [ -d "$dir" ]
then
echo "Directory exists"
else
`mkdir $dir`
echo "Directory created"
fi
'

# Basic File Operations
: '
#!/bin/bash

# Reading a file
file='editors.txt'
while read line; do
echo $line
done < $file

# Deleting a file
echo -n "Enter filename ->"
read name
rm -i $name

# Appending to a file
echo "Before appending the file"
cat editors.txt
echo "6. NotePad++" >> editors.txt
echo "After appending the file"
cat editors.txt
'

# Sleep and wait

: '
#!/bin/bash

# Reading a file
file='editors.txt'
while read line; do
echo $line
done < $file

# Deleting a file
echo -n "Enter filename ->"
read n`ame
rm -i $name
`
# Appending to a file
echo "Before appending the file"
cat editors.txt
echo "6. NotePad++" >> editors.txt
echo "After appending the file"
cat editors.txt
'