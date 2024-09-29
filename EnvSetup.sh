#Eric Gutierrez 
#COSC 4327.001
#Professor Brown 
#Description :Script(for a bash shell) so that it sets the following environment for any user that runs it (not just 
# the administrator or alice) 
#!/bin/bash

#Declare aliases 
alias md='mkdir'
alias rd='rmdir'
alias x='exit'
alias exe='chmod +x'

#root user has a user ID (UID) of 0. The command id -u returns the UID of the current user
#so if it doesnt have a UID of 0 then its not a root user 
# \# means the command number of this command 
#\w current directory 
#\d the date "weekday Month Date" format ("Tue May 26")
#\t the current time in 24 hour
# $ means for regular user whereas # means root user 
if [ $(id -u) -eq 0 ]; then
    PS1='[\#] \w \d \t # '
else
    PS1='[\#] \w \d \t $ '
fi

#Gets full name of the user from the /etc/passwd and stores it in username
username=$(grep "^$USER:" /etc/passwd | cut -d ':' -f 5 | cut -d ',' -f 1)

# Display the last 3 commands
echo "Last 3 commands"
history | tail -3

# Append current directory and /bin to the PATH
PATH=$PATH:.:$HOME/bin

# Customize the PS2 prompt
PS2='(more) '

# Get the correct day of the week and store it in dayOfWeek
#%A used to format the output 
dayOfWeek=$(date +"%A")

# Append "Happy to dayOfWeek
echo "Happy $dayOfWeek"

# Create .exrc file in the home directory with vi settings
echo "map <F4> ZZ" > $HOME/.exrc
echo "set number" >> $HOME/.exrc
echo "ab fori for (int i=1; i<=10; i++)" >> $HOME/.exrc



#Execute the 'goals' script based on the day of the week
case $dayOfWeek in
    "Monday")    line=1 ;;
    "Tuesday")   line=2 ;;
    "Wednesday") line=3 ;;
    "Thursday")  line=4 ;;
    "Friday")    line=5 ;;
    "Saturday")  line=6 ;;
    "Sunday")    line=7 ;;
esac

# Check if the 'goals' script exists and is executable
if [ -x "./goals.sh" ]; then
    ./goals.sh $line
else
    echo "The goals script is not available or not executable."
fi



