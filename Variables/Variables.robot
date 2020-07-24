*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# General Variables
# Using dictionary to store the site url
&{Siteurl}                  lg=http://automationpractice.com/
${browser}                  chrome
${Title}                    My Store

# Login Variales
${LoginPageTitle}           Login - My Store
${PageContains}             Welcome to your account
${UserHomePageTitle}        My account - My Store
${Error Message}            There is 1 error



