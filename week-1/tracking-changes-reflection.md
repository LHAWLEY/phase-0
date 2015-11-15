1. How does tracking and adding changes make developers' lives easier?
Tracking changes makes developers lives easier because it allows them to record all of the changes made to a file and only add changes to a master document when they have created code that they are happy with and want to add to a master file.
2. What is a commit?
A commit is a set of code that you have worked on and essentially saved for addition to a file.
3. What are the best practices for commit messages?
Commit messages should contain a short description of what was done. It should be written in the present tense and explain why a change was made.
4. What does the HEAD^ argument mean?
HEAD is the current commit you are in.  HEAD^ allows you to move back to a previous commit.  Which is the "parent" of the current commit, I think.
5. What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are committed, modified and staged.  To modify a file you check it out "git checkout {nameoffile}".  Once you have made all of you changes you want to stage it by using the command "git add {nameoffile}".  And after staging you are ready to "git commit {nameoffile}" to store the changes back on your local database.
6. Write a handy cheatsheet of the commands you need to commit your changes?
"git checkout -b {branch}"
"git add"
"git commit -m "commit message""
7. What is a pull request and how do you create and merge one?
A pull request is how you merge your changes into the master branch.  To create a pull request you need to push your changes to GitHub and then issue a pull request to the master branch.  To do this log into GitHub. Once you are in GitHub open your repo and you should see a "compare and pull request" button, click it.  Then verify your base branch and comparison branches are correct.  Add a title and description and then click "create pull request".  To merge your changes you want to click on the "conversation" tab of the pull request, click "confirm merge" and you are done.
8. Why are pull requests preferred when working with teams?
Pull requests are helpful because they allow for others to review code prior to code being merged with a file.  Pull request foster team work and help ensure that any bugs are worked out before code is added to a file.