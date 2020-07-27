# AutomationChallengeCode

# Installation
	# Download and install python for the appropriate OS (appropriate system)from https://www.python.org/downloads
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
	
	# This automation uses chrome driver
	# Download chrome browser driver from -> https://sites.google.com/a/chromium.org/chromedriver/
	# copy the chrome driver and place it in the python script folder
		
# To pull project from git
	# pull the project file from git using: git clone https://github.com/pathfindertimothy/AutomationChallengeCode.git
	
# To run the test
	# There are three test files to run namely, invalidlogintest.robot, validtest.robot and shoppingcarttest.robot
	# From the command prompt pointing to the directory of the project run the following
		# To run all test files use -> robot testcases\
		# or -> robot testcases\*.robot
		
		# To run single test, do the following:
		# To run single test file -> robot testcases\invalidlogintest.robot
		# To run single test file -> robot testcases\validlogintest.robot
		# To run single test file -> robot testcases\shoppingcarttest.robot