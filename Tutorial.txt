Tutorial

Tips:
1. How to use Jenkis to do code deployment.
	- step1: git clone remote repo to a QA location 
	- step2: git clone remote repo to a DEV location
	- step3: create new | update files in DEV folder, then add, commit push to remote repo
	- step4: check the new | update files are in git remote repo
	- step5: configure Jenkins's job with below:
		* Source Code Management: select git
		* build trigger: select poll SCM
		* build:
			cd /Users/winnie/documents/QAenv/temprepo #got QA folder
			git pull 
	- step6: build now and check the new |update files are deployed in QA folder