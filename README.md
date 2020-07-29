# AutomationChallengeCode

# To pull project from git
	# Pull the project file from git using: git clone https://github.com/pathfindertimothy/AutomationChallengeCode.git
	

# Installation
	# Download and install python (version used 3.8.3) for the appropriate OS (appropriate system)from https://www.python.org/downloads
	# Locate the python folder and configure the path in the python script folder and add to environment variables
	# Note that pip package manager comes bundled with python installation
	
	# Install Selenium using (the command prompt) -> pip install selenium
	# Install Robotframework using (the command prompt) -> pip install robotframework
	# Install Robotframework Selenium Library using (the command prompt) -> pip install robotframework-seleniumlibrary
	
	# The below excel libraries are needed in order to use the test data in the excel file
	# Through the command prompt, install -> pip install robotframework-exceldatadriver
	# Through the command prompt, install -> pip install -U robotframework-datadriver[XLS]
	# Through the command prompt, install -> pip install xlrd - needed in order to use excel for the data
	# Through the command prompt, install (needed dependcy for excel file) -> pip install numpy
	# Through the command prompt, install (needed dependcy for excel file) -> pip install pandas
	# This is only needed if using Pycharm IDE to install the libraries above from line 17 - 21 in Pycharm IDE
		# Open the project in Pycharm IDE
		# Highlight the project directory (AutomationChallengeCode)
		# Go to File -> Setting -> Project: AutomationChallengeCode -> Project Interpreter
		# On the right panel, click on the plus sign (+) to install the libraries
		# Search for each of the libraries in line 17 - 21 and install them
		# On the Setting panel (...line 25 above), click on Plugins, search for Intellibot @SeleniumLibrary Patched and install it
	
	# This automation uses chrome driver
	# Download chrome browser driver from -> https://sites.google.com/a/chromium.org/chromedriver/
	# copy the chrome driver and place it in the python script folder
		

# To run the test
	# There are three test files to run namely, invalidlogintest.robot, validtest.robot and shoppingcarttest.robot
	# From the command prompt pointing to the directory of the project run the following:
		# To run all test files, use -> robot testcases\
		# or -> robot testcases\*.robot
		
		# To run single test, do the following:
		# To run invalidlogintest file -> robot testcases\invalidlogintest.robot
		# To run validlogintest file -> robot testcases\validlogintest.robot
		# To run shoppingcarttest file -> robot testcases\shoppingcarttest.robot
		# The same commands can be used to run the test files in pycharm IDE in the terminal window

# See the Documentation folder for assumption take in respect of the testcases