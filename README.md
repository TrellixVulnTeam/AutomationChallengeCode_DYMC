# AutomationChallengeCode

# Introduction
	# This automation test uses Robotframework
	# The following guidelines should be followed and libraries installed in order to run the test

# To pull project from git
	# Pull the project file from git using: git clone https://github.com/pathfindertimothy/AutomationChallengeCode.git	

# Installation
	# Download and install python (version used 3.8.3) for the appropriate OS (appropriate system)from https://www.python.org/downloads
	# In most cases python script folder will be added to environment variables path automatically when installed
	# You can check if the python script folder is present in environment variables path and if not, do this:
		# Locate the python folder and configure the path in the python script folder and add to environment variables
	
	# Note that pip package manager comes bundled with python installation	
	# Install Selenium using (the command prompt) -> pip install selenium
	# Install Robotframework using (the command prompt) -> pip install robotframework
	# Install Robotframework Selenium Library using (the command prompt) -> pip install robotframework-seleniumlibrary
	
	# The below excel libraries are needed in order to use the test data in the excel file
	# From the command prompt, install -> pip install robotframework-exceldatadriver
	# From the command prompt, install -> pip install -U robotframework-datadriver[XLS]
	# From the command prompt, install -> pip install xlrd
	# From the command prompt, install (needed dependency for excel file) -> pip install numpy
	# From the command prompt, install (needed dependency for excel file) -> pip install pandas
	# From the command prompt, check if the above libraries are installed using -> pip list
	# If the libraries are not present in pip list, install the libraries again
	
	# The test can be ran directly from the command prompt without installing pycharm IDE
	# This step is only needed if using Pycharm IDE to install the libraries above from line 17 - 21 in Pycharm IDE
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
	# This test uses external test data in an excel sheet which is located in the TestData folder
	# There are three test files to run, namely invalidlogintest.robot, validtest.robot and shoppingcarttest.robot
	# From the command prompt pointing to the directory of the project run the following:
		# To run all test files, use -> robot testcases\
		# or -> robot testcases\*.robot
		
		# To run single test, do the following:
		# To run invalidlogintest file -> robot testcases\invalidlogintest.robot
		# To run validlogintest file -> robot testcases\validlogintest.robot
		# To run shoppingcarttest file -> robot testcases\shoppingcarttest.robot
		# If using pycharm IDE, the above command will also work in the pycharm terminal window
		
# Documentation
	# See the Documentation folder for assumption taken in respect of the testcases

# Reports and Logs
	# Test cases reports can be viewed by opening the report.html file in the project root directory
	# Test cases logs can be viewed by opening the log.html file in the project root directory