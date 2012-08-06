#Bash Git Prompt

A Bash script to add git info to the shell prompt.

Forked from [yerv000](https://github.com/yerv000/Bash-Git-Prompt), removed minutes since last commit and remote branch status.

##Preferred Installation Method

Clone the repository into your home directory.

**For Ubuntu:** Add the following source line to your `~/.bashrc` file all the way at the bottom:

    source $HOME/Bash-Git-Prompt/git_prompt.sh

**For Mac OS X:** By default a `.bash_profile` file does not exist in the home directory.  Create one using `touch ~/.bash_profile` if it does not exist then add the same line to it as for Linux:

    source ~/Bash-Git-Prompt/git_prompt.sh

If in a terminal shell then exit and open a new shell.

##Usage

Bash shell prompt will change to display repository information when a change directory is done into a git working tree.

The prompt will display various info, for example:

    user@system(master|?AM)$

`master`: On branch master

`?AM`: Git file flags. `?` for untracked files. `A` for newly added uncommited files.  `M` for modified uncommited files.  `R` for renamed files.  `D` for deleted files.

Inside a git working tree use `rd` to cd all the way to the root directory of the project.

Tested on Mac OS X Lion.

Enjoy!
