# git top 20 commands: 
#https://dzone.com/articles/top-20-git-commands-with-examples

#This command sets the author name and email address respectively to be used with your commits.
git config
	git config –global user.name “[name]”
	git config –global user.email “[email address]”

#This command is used to start a new repository.
	git init
	git init "MyTestRepo"

 

#This command is used to obtain a repository from an existing URL
	git clone 
	git clone [remote url]  

#This command adds a file to the version control process
	git add
	git add [file]
	git add *  #This command adds one or more to the staging area.

#This command records or snapshots the file permanently in the version history.
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

#This command is used to switch from one branch to another.
	git merge
	git merge [branch name]

#This command is used to connect your local repository to the remote server.
	git remote
	git remote add [variable name] [Remote Server Link]  

#This command is used to connect your local repository to the remote server.
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