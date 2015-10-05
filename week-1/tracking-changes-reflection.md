## How does tracking and adding changes make developers' lives easier?
They allow developers to keep track of what is different in their code, allowing for editing and bug fixes.
## What is a commit?
A commit is a "save point" in your code, where you have a working code that might not be done yet, but if you make mistakes in the next part of the code, you can fall back to the most recent commit.
## What are the best practices for commit messages?
Capitalize your message. Keep it short and informative. Bullet points or hyphens may be used if necessary, with a hanging indent. Verbs should be in the imperative.
## What does the HEAD^ argument mean?
Removes the most recent file (back to the commit point)
## What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Make a change
- Add the change
- Commit the change

I'm not sure what you mean by stage? I think you mean moving forward through the process I just outlined, which is done thus:

- type command
- type "git add [changed file]"
- type "git commit -m 'commit message'"

## Write a handy cheatsheet of the commands you need to commit your changes?
Oh I just did that.
## What is a pull request and how do you create and merge one?
Pull requests let you show other people what you have changed and allow you to merge your working branch with the master branch.

## Why are pull requests preferred when working with teams?
Pull requests allow for easy comparison of changes, and the pull request discussion in GitHub allows the people working on the code to comment on and discuss changes together.