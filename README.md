# Env Setup With Goals 
This project consists of two connected bash scripts that work together to customize the user's environment and dynamically display goals based on the day of the week
- goals.sh
   - This script reads a specific line from a file goals.txt based on a line number passed as an argument. The line contains the goal for the user, and the script extracts and displays it using the sed command. The line number corresponds to the day of the week. 
- EnvSetup.sh
   - Declares aliases for mkdir, rmdir, exit, chmod +x
   - Modfies the P1 prompt based on whether the user is root or a regular user
   - Retrieves and displays the last 3 commands from the command history
   - Appends the current directory and $HOME/bin to the PATH variable
   - Executes the goals.sh script showing the goal that corresponds the current day of the week
 
# What I learned 
- I learned how to write a bash script that sets up and cutomizes a shell environment for any user. This included defining aliases, manipulating the PS1 and PS2 prompts.
- Through the use of sed, I learned how to extract specific lines from a file based on user input.
- I learned how to conditionally modify the shell envrionment depending on whether the user is root or non-root
   
