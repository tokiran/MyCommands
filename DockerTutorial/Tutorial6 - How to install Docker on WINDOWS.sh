#Tutorial6 - How to install Docker on WINDOWS
	#Prerequisites
		- OS - 64bit
		- Windows 7 or higher

	#Install Docker
		- Docker for Windows:
			#docker for windows requires 64bit Windows 10 Pro and Microsoft Hyper-v.
		- Docker Toolbox for legacy Windows OS.
		- Docker QuickStart Terminal | Kitematic | Oracle VM VirtualBox

	#Trouble Shootings
		#Issue1: "This computer is running Hyper-V. VirtualBox won't boot a 64bits VM when Hyper-V is activated....."
		- fix: 
			1. c:\Program Files\Docker Toolbox\start.sh
			2. Replace 
			"${DOCKERMACHINE}" create -d virtualbox $PROXYENV "${VM}"  			with
			"${DOCKERMACHINE}" create -d virtualbox --virtualbox-no-vtx-check $PROXYENV "${VM}"

		#Issue2: "....waiting for an IP..."
		- fix:
			1. Goto "Windows Firewall" --> Advanced settings --> Inbound Rules --> New Rule..:
				select: Custom, go "next" until you are asked to add IP address
				go "next", until "When does this rule apply", select "Public"

	#Uninstall Docker
		- Same as usual way to uninstall applications