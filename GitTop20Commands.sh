# git top 20 commands: 
#https://dzone.com/articles/top-20-git-commands-with-examples

#This command sets the author name and email address respectively to be used with your commits.
git config
	git config –global user.name “[name]”
	git config –global user.email “[email address]”

#This command is used to start a new repository.
	git init
	git init "MyTestRepo"

 #*****This command is used to obtain a repository from an existing URL
	git clone 
	git clone [remote url]  

#*****This command adds a file to the version control process
	git add
	git add [file]
	git add *  #This command adds one or more to the staging area.

#*****This command records or snapshots the file permanently in the version history.
	git commit
	git commit -m “[ Type in the commit message]”
		git commit testfile.txt
	git commit -a  #This command commits any files you’ve added with the git add command and also commits any files you’ve changed since then.

#This command shows the file differences which are not yet staged.
	git diff
	git diff –staged #This command shows the differences between the files in the staging area and the latest version present
	git diff [first branch] [second branch]  #This command shows the differences between the two branches mentioned.

#This command unstages the file, but it preserves the file contents.
	git reset
	it  reset [file]  
	Git reset [commit]  #This command undoes all the commits after the specified commit and preserves the changes locally.
	git reset –hard [commit]  #This command discards all history and goes back to the specified commit.

#This command lists all the files that have to be committed.
	git status

#This command deletes the file from your working directory and stages the deletion.
	git rm
	git rm [file]  

#his command is used to list the version history for the current branch.
	git log
	git log –follow[file]  #This command lists version history for a file, including the renaming of files also.

#This command shows the metadata and content changes of the specified commit.
	git show
	git show [commit]  

#This command is used to give tags to the specified commit.
	git tag
	git tag [commitID]  

#This command lists all the local branches in the current repository.
	git branch
	git branch [branch name] #This command creates a new branch
	git branch -d [branch name]  #This command deletes the feature branch.

#This command is used to switch from one branch to another.
	git checkout
	git checkout [branch name]
	git checkout -b [branch name]  #This command creates a new branch and also switches to it.

#This command merges the specified branch’s history into the current branch.
	git merge
	git merge [branch name]

#This command is used to connect your local repository to the remote server.
	git remote
	git remote add [variable name] [Remote Server Link]  

#*****This command is used to connect your local repository to the remote server.
	git push
	git push [variable name] master  
	git push [variable name] [branch]  #This command sends the branch commits to your remote repository.
	git push –all [variable name]  #This command pushes all branches to your remote repository.
	git push [variable name] :[branch name]  #This command deletes a branch on your remote repository.

#This command fetches and merges changes on the remote server to your working directory.
	git pull
	git pull [Repository Link]  

#This command temporarily stores all the modified tracked files.
	git stash
	git stash save
	git stash pop  #This command restores the most recently stashed files.
	git stash list  #This command lists all stashed changesets.
	git stash drop  #This command discards the most recently stashed changeset.


##-----------Some useful functions-----------##
#Create new repository from local
	#Remove a remote repository if required
	git remote shows 			#Show remote repo name
	git remote remove origin	#delete remote repo

	1. go to your local folder
	2. git init
	3. git status 
	4. git add .
	5. git commit -m "added hello"
	6. login and create new repo in GitHub (create a public repository)
	7. git remote add origin https://github.com/yuwinnie/temprepo.git
	8. git push -u origin master

#Delete folder in remote repository
	git rm -r "Jenkins Tutorials"
	git commit -m "remove 'Jenkins Tutorials' folder"
	git push -u origin master

#Push updates from local to remote repo
	git add .
	git comit -m "June 8 updates"
	git push

# push file from other branch to Master branch
	git branch MyNewBranch
	git checkout MyNewBranch
		create a file named :test1.txt
	git add.
	git commit -m "added text1.txt"
	git push -u origin MyNewBranch
	git checkout Master
	git merge MyNewBranch
	git push -u origin Master
	git branch -d MyNewBranch #Only delete the branch in local
	git push origin --delete MyNewBranch #will delete from remote repo

#Git Merge VS Git Rebase
	#Git Merge
	- Is a non-destructive operation
	- Existing branches are not changed in any way
	- Creates a new merge commit in the feature branch

	#Git rebase
	- Moves the entire feature branch to begin on the top of the master branch
	- Re-writes the project history
	- We get much cleaner and linear project history

	#Demo1: Git merge:
		#Step1: goto local folder and create a new file: 
		touch text1.txt

		#Step2: Creaet new repo and add new file
		git init
		git add . #add text1 file
		git commit -m "add text1.txt"

			#note: use below 2 commands to monitor the process
			git status
			git log 

		#Step3: Create new branch: feathure and create new file for this branch
		git branch feature
		git checkout feature
		touch f1.tx
		git add .
		git commit -m "add f1.txt"

		#Step4: Create new file text2 in master branch
		git checkout master
		touch text2.txt #there is only text1.txt and text2.txt files as of now
		git add .
		git commit -m "add text2.txt"

		#Step5: Merge
		git checkout feature
		git merge master
		git log

		#Step6: Push to remote
		git checkout master
		git remote add origin https://github.com/yuwinnie/demomerge.git
		git push -u origin master

	#Demo2: Git rebase
		#Step1 - Step4 are same
		#Step5: Rebase
		git checkout feature
		git rebase master
		git log

