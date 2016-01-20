---
title: "Git Configuration"
Author: Gaston Sanchez
---

This tutorial aims to get you started with Git


### Configuring Git

Git stores configuration information in three places:

- System level configuration: apply to every user in a computer
- User level configuration: apply to a single user machine 
- Project level configuration: configurations that apply on a project-by-project basis

The git command to specify configuration settings is `git config`

- `git config --system` (system level)
- `git config --global` (user level, _global_ refers to user)
- `git config` (project level)

The important configuration is the user level one. You will need to configure git at the __user level__. 

__User Name__
Tell git your user name with the following command:
```
git config --global user.name "Your Name"
```
Note: replace `"Your Name" with your name.

__Email__
Tell git your user name with the following command:
```
git config --global user.email "your.email@somewhere.com"
```

To see the configurations type:
```
git config --list
```

To see specific settings:
```
git config user.name
git config user.email
```

All this information is stored in the `~/.gitconfig` file (in your home directory):
```
cd ~
ls -la
cat .gitconfig
```
__Text Editor__
You can also specify a defaul text editor for Git to use:
```
# nano
git config --global core.editor = "nano"
```
You can specify a text editor of your preference: nano (Mac), emacs, vim, notepad.exe (Windows), etc.

__Colored Output__
By default Git displays the output in monochromatic colors. But you can tell git to use some colors:
```
# colored user interface
git config --global color.ui true
```
Check one more time your settings:
```
cat .gitconfig
```

__Auto-completion__
Git for Windows already has auto-completion of commands, but not Mac or Unix. The required information is available in github: [git auto-completion](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks#Auto-Completion)

```
# download auto-completion script to your home directory
cd ~
curl -OL https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

# confirm it's there
ls -la

# rename as dot file
mv ~/git-completion.bash ~/.git-completion.bash
```

Once downloaded, the script needs to be added to your bash login configuration (`.bash_profile` or `.bashrc`). In case of doubt, add the script to your `.bash_profile` with these lines:
```
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
```

Test the auto-completion: type `git h` and then press the TAB key (see if it completes the command).


### Getting Help Documentation

To get help use `git help`
```
git help
```

To get more information about a specific command:
```
git help log
```
(this is similar to the manual documentation of shell commands)

Another way to get help is like this:
```
man git-log
```