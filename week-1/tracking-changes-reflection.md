# 1.5 Tracking Changes Reflection

Tracking and adding changes makes the lives of developers easier because it allows your to see where changes are coming from and merge those changes into the master branch without worrying about the main code being disturbed.  Through the use of branching and pull requests, developers and monitor the proposed changes of other developers and only merge the code that has been approved. A commit is more or less when a developer saves the code they are working on in the form in which it will be merged.  When a developer commits their code they are saying that there will be no further changes to this edit on which they are working. Commit messages should be as verbose as possible.  They should include the title commit message, which includes a quick lede as to what the changes were, the name of the person making the commit and a more in-depth explanation of the changes in this version of the code.  This way, there is a high-level overview as well as a more in-depth explanation.  The HEAD^ argument refers to the most recent commit. if you use the command "git reset HEAD^" you are telling git to unstage the file that you have staged to be committed.  You can also used HEAD^ to undo your most recent commit.  The three main stages of a git change are the commit, the push to the online repo, and the merge of that branch into the master repo.  You could also include the "add" stage as the preliminary stage to a git change.  To commit a file you first stage the file by using "git add [filename]".  Once the file is staged you can commit the changes with "git commit -m [message]".  You can also use -v instead of -m and add the commit message through the text editor.  You then push your local changes on your branch to the online repo with "git push origin [branch name]".  The branch can then be merged into the master through either "git merge [branch name]" - which is considered bad practice - or initiating a pull request in GitHub.  Once a pull request is submitted, other developers can look over the code and elect whether or not to merge the branch into master.

Git Changes Cheat Sheet:

Step 1: "git add [filename]" (you can also use "." in place of the file name to add all untracked files to the staging area)

Step 2: "git commit -m [commit message]" (This will commit your changes - you can also use "-v" and add a commit message in a text editor)

Step 3: "git pull origin master" (This will update your local repo and ensure that you have the most up-to-date master branch)

Step 4: "git push origin [branch name]" (this will push your local branch to your online repo on GitHub)

Step 5: Initiate a pull request on GitHub and then either merge your code yourself or wait for another developer

Step 6: delete your branch on GitHub

Step 7: "git pull origin master" (This will once again update your local repo with the added changes)

*Check "git status" throughout this process

Pull requests are GitHub's safeguard against a developer merging their own branch into master.  With a pull request, a developer is essentially asking whether their code is fit to be merged.  Once the pull request is made, any developer can merge the code within GitHub by pressing the green button that says "Merge". Pull requests are good for teams because the create checks and balances where team members check other team members' code before it's committed.  This increases the quality of the code and also prevents the master branch from being constantly flooded with redundant changes.