$ git config --global core.editor "'C:\Program Files\Sublime Text 3\sublime_text.exe' -multiInst -notabbar -nosession -noPlugin" #if you want to change editor
$ clear # clear window

$ git init new-git-project #create new directory, in our case new-git-project
#use this when you want to create a local repo 

$ git status # gives useful information
$ ls #view contents of files directory 
$ cd  course-git-blog-project #move to the directory you want, in our case course-git-blog-project
$ cd  #takes you to default directory

$ git log # display info about authors and commits, up,down,space,b,q
$ git log --oneline #gives shaw and commit message
$ git log -p  #explain how the changes are made


$ git add index.html #add new file in repo, "git add ." to add everything

$ git commit     #The git commit command takes files from the Staging Index and saves them in the repository, 
# when you edit a file make sure you add then commit,
# MAKE SURE SUBLIME/EDITOR IS CLOSED WHEN YOU DO THIS after commenting

$ git commit -m 'Insert commit comment' #add comment directly
#do the edit on sublime and save, run git diff to see difference, do git add , then git commit -m 


$ git diff #The git diff command can be used to see changes that have been made but haven't been committed, yet.


#how to create .gitignore
$ touch .gitignore #or create via windows
#open .gitignore and write file name, for ignore same extenstion *.csv
# git add .gitignore
#https://www.youtube.com/watch?v=ErJyWO8TGoM&ab_channel=codebasics

#MAKE SURE SUBLIME/EDITOR IS CLOSED WHEN YOU DO THESE
$ git tag -a v1.0 # add tag
$ git tag -d v1.0 #delete tag
$ git tag -a v1.0 d2a3616 #add tag for certain shaw

#branches
$ git branch #know which branch you are at 
$ git branch sidebar #create branch called sidebar
$ git checkout sidebar #switch to sidebar branch
$ git branch -d sidebar #make sure your HEAD pointer is not on sidebar
$ git branch sidebar ec21566  # add branch at a certain SHA

$ git checkout -b footer master #create a branch called footer at the master branch and HEAD/Point it at footer, so no need for checkout footer
$ git log --oneline --decorate --graph --all #Running this command will show all branches and commits in the repository:

$ git merge footer #merge branches, make sure you are at master branch, 
#footer branch is ahead of master branch so this is a fast forward merge

$ git commit --amend #you can alter the most-recent commit
#lternatively, git commit --amend will let you include files (or changes to files) you might've forgotten to include. 
#edit,save,stage and run git commit --amend to edit files in last commit

$ git revert <SHA-of-commit-to-revert> #will undo the changes that were made by the provided commit
#creates a new commit to record the change



#remote repo
#first create local repo
#go to github, create your repo

$ git remote add origin <url> #use the new  url here, 
#makes a connection between local and remote
$ git remote -v #To verify that I've added the remote repository correctly

$ git push <remote-shortname> <branch> #remote-shortname is orgin and branch is master
$ git push origin master #pushes master branch from local to remote
$ git pull origin master #pushes from remote to local

$ git fetch #Explanation here: https://www.atlassian.com/git/tutorials/syncing/git-fetch 


$ git clone <url> # to clone from a forked project, don't forget to cd

$ git shortlog #It displays all commits sorted by author.
$ git shortlog -s -n #sort by number of commits
$ git log --author=firstname #sort by author first name
$ git log --author="full name" #for author full name
$ git show <SHA> #if you are searching for a specific SHA commit info

$ git log --grep=name #search for a commit label by name

$ git remote add upstream https://github.com/udacity/course-collaboration-travel-plans.git
$ git fetch upstream master
#lets say you are working on this forked project, and you update it, but the author 
#also updates his work, so you do this to sync with the author updated version
#plus keeping your changed

$ git rebase -i HEAD~3 #make sure editor is closed when you run this
#lets say I made little changes in 3 commits, so I can combine the 3 commits to 1
#Head points to current location
#choose r,s,s to combine all to one , then remove lower 2 comments to only
#have 1 comment


#problems:
#What if it says 'error: failed to push some refs to 'https://github.com/Zriby/pdsnd_github.git'
#Answer: use pull, and make sure its the right branch 'git pull origin documentation'
#you should get 'CONFLICT (content): Merge conflict in README.md'
#fix the conflict in the README.md file, add and commit

#Can you merge multiple branches into master?
#Yes simply: merge branch1 branch2

#How to create local repo and connect it to remote
#answer:
#$ cd
#$ git init US_Bikeshare_Using_Python #to create local repo
#$ cd US_Bikeshare_Using_Python
#$ git add .
#$ git commit -m 'Initial commit'
#then create remote repo with same name on GitHub
#$ git remote add origin https://github.com/Zriby/US_Bikeshare_Using_Python.git
#$git remote -v
#$ git push origin master