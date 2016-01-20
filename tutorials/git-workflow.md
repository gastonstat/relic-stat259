---
title: "Git Basic Workflow"
Author: Gaston Sanchez
---

This tutorial presents the basic workflow that you will be doing most of the times with Git


### Git Status

Go to your `toy_project` directory. It should have two files. 

The next command you have to learn is `git status`. This command reports the difference between the working directory, the staging index, and the repository. 
```
git status
```

You should see a message like this:
```
# On branch master
nothing to commit (working directory clean)
```
This means that the working directory exactly matches what is in the repository



### Adding more content

Now let's add more files:

- create two new files `file3.txt` and `file4.txt`
- check the `git status`

Add just the file `file3.txt`, and then check the status
```
git add file3.txt
git status
```
At this point, the status shows two parts: the __staged__ changes (ready to be commited), and the __untracked__ files (which are not being tracked)

Let's commit the staged changes with a message, and then see the status
```
git commit -m "add file3 to the project"
git status
```

You can also look at the commits log
```
git log
```

__Your turn:__ Add the fourth file, check the status, commit the changes, check status again, and see the log.

Remember the basic workflow: you make changes, add the changes, and commit the changes with a message. Adding `git status` to the workflow completes the process:

- make changes
- check status
- add the changes
- check status
- commit the changes with a message


-----

### Making Changes to Files

We've seen how to add and commit new files. However, in practice is very common to make changes to existing files, or even deleting some files. It is important to understand how Git tracks these types of modifications.

In this part we are going to edit some files and see how Git works with those changes.

So far we have four files in our `toy_project`: `file1.txt`, ..., `file4.txt`. Let's modify the contents of `file1.txt` (e.g. add a quote). Once you change the file, let's check the status:
```
git status
```

As you can tell, Git tells you that `file1.txt` has been modified. Add the changes and commit them:
```
git add file1.txt
git commit -m 'add quote to file1.txt'
```

Modify `file2.txt` by adding a telephone number, and add the change (but don't commit it yet)
```
git add file2.txt
```

Before commiting the previous change, modify `file3.txt` as well by adding the name of one of your favorite movies. If you do `git status` you will see that the modified `file2.txt` is in the staged directory while the modified `file3.txt` is just in the working directory.

Commit the change of the second file (not `file3.txt`). 
```
git commit -m 'added a telephone number in file2.txt'
git status
```

Finally, let's add and commit the modified `file3.txt`
```
git add file3.txt
git commit -m 'added favorite movie to file3.txt'
```


### See what changes have been made

Let's make more edits to `file1.txt`, say, adding the city where you were born. If you do `git status`, you know that Git will report that `file1.txt` has been modified.

In order to see the difference between what's in the staging index versus what is in the working directory, you can use `git diff`
```
git diff
```
Take some time to look at the output and understand what's going on.

Make some changes to `file2.txt`, for instance, adding the name of your major.
```
git diff
```

If you want to get the changes of just the first file, then type
```
git diff file1.txt
```


### See the changes in the staging index

Let's add `file1.txt` to the staging index and see the differences again:
```
git add file1.txt
git diff
```
Notice that `git diff` only shows the changes in `file2.txt`

How do we see the modifications in `file1.txt`? Simple use the option `--staged`
```
git diff --staged
```

Now add `file2.txt`
```
git add file2.txt
git status
git diff
```


### Deleting Files in Git

Create two more files: `dummy1.txt, dummy2.txt`; these will be deleted after being added and committed to the repository.
```
touch dummy1.txt dummy2.txt
git status
git add .
git commit -m 'adding dummy files'
```

Let's look at the naive way to delete a file.
```
rm dummy1.txt
git status
```

Now try adding the deleted file:
```
git add dummy1.txt
```

To actually add the changes to the staging area we need to:
```
git rm dummy1.txt
git status
```

Now we can commit:
```
git commit -m 'deleted dummy1.txt'
git status
```

The other way to delete is using `git rm` which will delete the file and record the changes in the staging index:
```
git rm dummy2.txt
git status
```
After that you can commit:
```
git commit -m 'delete dummy2.txt'
```


### Moving and Renaming Files in Git

```
git mv
```