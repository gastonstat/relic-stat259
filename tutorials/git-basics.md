---
title: "First Steps with Git"
Author: Gaston Sanchez
---

This tutorial aims to get you started with Git


### Initializing Git

The get-started command is `git init`

Go to your `Documents` directory, create a new directory `toy_project`, and initialize a git repository in that directory:
```
cd ~/Documents
mkdir toy_project
cd toy_project
git init
```

You should be able to see a similar message like this
```
Initialized empty Git repository in /Users/gaston/Documents/toy_project/.git/
```
Git creates a `.git` directory inside the project's folder. This is where Git will do all of its storing and tracking (i.e. this is like Git workspace). Make sure `.git` exists:
```
# checking hidden files
ls -la
```

### Where Git stores its files

Let's take a peek at the directory `.git`
```
cd .git
ls -la
```
All the contents in `.git` are managed by Git, so don't mess around any of these files. Everything that Git does is stored in this directory.


### Adding some files

- Go to the `toy_project` directory
- Create a file `file1.txt` with a couple of lines of text

The first thing we'll do is to tell Git to add all the changes that have been made to this project:
```
# add every change in this directory
git add .
```

Then, we'll commit the changes: in other words, tell Git to put the changes in permanent memory (i.e. in the repository). This is done via `git commit` and some message with the `-m` option:
```
# commit the change
git commit -m "initial commit"
```

Basic workflow:

- make changes
- add the changes
- commit the changes with a message


### Adding more files

- Create a file `file2.txt` with more content
- Add the changes
- Commit the changes with a message


### Writing commit messages

How to write commit messages? You want to have a commit message that describes the changes that you're making in that commit set:

- added file to project
- added data set file
- fixing a bug

The reason to add a message is to label what we were doing in a given change so when we come back and look at it later, we can just look at the commit message and know what's inside. Some best practices are:

- Start with a short single-line summary (less than 50 characters)
- Optionally, we can follow that by a blank line and then a more complete description
- For tiny changes, a single-line summary is enough
- For major changes, a more complete description is needed
- For multiline commit messages, use a text editor
- Choose a label of what the commit does
- Bad message: "fix a typo"
- Good message: "this fixes a typo in title of file1.txt"
- Avoid vague messages

It's very important to have well labeled commits so that if someone makes a commit and then your friend is thinking about incorporating that commit into her project, she can look at it, see what that commit is, and decide to merge it into her project so that it becomes part for her project as well.


### Looking at Previous Commit Messages

Now that we've made our first commits, let's take a look at those commit messages with `git log`. This will show the log of commits that have taken place so far:
```
# viewing the commit log
git log
```

Each commit has:

- a unique ID known as the __SHA-1__ number
- the __Author__ of the commit (taken from my global configuration)
- the __Date__ of the commit
- the message

The Author name let us know who made a commit, that's why the configuration (in `gitconfig`) was so important.


```
# watching one commit
git log -n 1

# watching two commits
git log -n 2

# watching five commits
git log -n 5
```

```
# abreviated logs
git log --oneline

# everything since a date
git log --since=2016-01-01

# everything until a date
git log --until=2016-01-02

# everything since-and-until a date
# (to see commits between a range)
git log --since=2016-01-01 --until=2016-01-02

# from an author
git log --author="gaston"

# from another author
git log --author="jessica"

# regular expressions
git log --grep="init"
git log --grep="R script"
git log --grep="latex"
```

