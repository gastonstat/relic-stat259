---
title: "Git Branches"
Author: Gaston Sanchez
---

This tutorial describes how to work with branches in Git.


### Git Branches

Go to your `toy_project` directory. 

As usual, the first thing to do is check the status of your working directory:
```bash
git status
```

Before creating any new branches, check whether there are any untracked files or modifications; if so, deal with them first.


### Creating New Branches

The command to create a new branch is `git branch` followed by the name of the new branch. For instance, say you want to create a dedicated branch to develop code for a barchart. You can give this branch the name "barchart":
```bash
git branch barchart
```

To switch to the barchart branch use: `git checkout` followed by the name of the branch:
```bash
git checkout barchart
git branch
```

If you run `git branch` again, you should now be able to see that "barchart" is the active chart. Moreover, by running `git status`, the working directory should be clean (nothing to commit) since no changes have been made yet.

Compare `git log` of "barchart" against "master"
```bash
# commits of barchart
git log --oneline
# commits of master
git checkout master
git log --oneline
```

### Git Branches

Go back to the barchart branch
```bash
git branch
git checkout barchart
```

Add a new file and commit the changes. Compare again the commits log between "barchart" and "master".

Make a couple of more changes so your "barchart" branch is ahead of "master" by two commits.
```bash
# commits of barchart
git log --oneline
# commits of master
git checkout master
git log --oneline
```

### Comparing branches

In the same way we can compare differences between files, we can also compare branches:
```bash
git diff barchart..master
```
or equivalently:
```bash
git diff master..barchart
```


### Merging branches

Let's pretend that we are done with the development of the barchart function. Now it's time to merge changes in "barchart" with the "master" branch.

1. Make sure your branches have clean working directories (i.e. nothing to be committed)
2. Checkout the branch where changes will be merged into (e.g. usually the master branch)
3. Then use git merge with the name of the branch to merge
4. Inspect the summary of the changes that were made

We will consider 2 types of merges:

- Fast Forward merge
- True merge


### Fast Forward Merge

Use `git merge` to do a __fast forward__ merge (no conflicts)
```bash
git checkout master
git commit
git merge barchart
```

Once again let's compare the commits:
```bash
# commits of barchart
git log --oneline
# commits of master
git log --oneline master
```

Or similarly, make sure there are no differences:
```bash
git diff master..barchart
```
master and barchart share the same commit history


### True Merge

A _True Merge_ occurs when the HEAD of the branch to be merged is behind the HEAD of the "receiving" branch 

