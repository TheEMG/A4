#Eric Gutierrez 
#COSC 4327.001
#Professor Brown 
#!/bin/bash

# Check if a line number is provided
if [ -z "$1" ]; then
    echo "No line number provided"
    exit 1
fi

GOALS_FILE="./goals.txt"


# Check if the goals file exists
if [ ! -f "$GOALS_FILE" ]; then
    echo "Goals file not found"
    exit 1
fi

# Display the goal for the given line number
#sed is the stream editor and transforms text
#-n limits what sed can print out 
#${1}p basically takes in a argument and prints the corresponding line 
sed -n "${1}p" "$GOALS_FILE"

