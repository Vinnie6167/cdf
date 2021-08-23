# cdf Documentation
Custom commands for the bash shell which enable the user to quickly switch between favorited directories.

## Installation
1. Download the .cdf_commands.sh file
2. Put the file somewhere nice (home directory)
3. Add the following line to your .bashrc

        source ~/.cdf_commands.sh
4. Restart your shell

## Commands
    cdf -l
Prints out the favorited directories and their nicknames

    cdf -a
Adds a favorited directory

    cdf -d
Deletes a favorited directory

    cdf <directory nickname>
Moves to the favorited directory
