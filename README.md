
# Project Name : Master-pepkor-merx-qa-Selenium 
(WebDriver Test with BDD (Cucumber) and TestNG)

This repository contains an example project demonstrating how to set up and run Selenium WebDriver tests using Java with a BDD (Behavior-Driven Development) framework (Cucumber) and TestNG.

## Prerequisites

Make sure you have the following installed:

    Java Development Kit (JDK)
    Maven or Gradle (for dependency management and building)
    Your preferred IDE (IntelliJ IDEA, Eclipse, etc.)
    Jira (Xray)

## Getting Started

1. **Clone the repository:**


   git clone <https://gitlab.pepkorit.com/merx/merx-test-automation/merx-test-automation-ui.git>
   cd <merx-test-automation-ui>


# Install Dependencies For Running the Framework in Local:

Use the below command to run the framework
```
mvn clean install --- to install dependencies
or
mvn clean test ---  to run the framework
```
 
## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.pepkorit.com/merx/merx-test-automation/master-pepkor-merx-qa.git
git branch -M master
git push -uf origin master
```

## Configure TestNg XML:
Update testng.xml file located in the src/test/resources directory with appropriate test configurations.

## Create Feature Files:
Create Feature Files:

Write your feature files in Gherkin syntax under /features.
## Implement Step Definitions:

Create step definition classes under src/test/java/steps that map Gherkin steps to Java code.
## How Run Tests:
       From IDE:
        Right-click on Runnertestng.xml class and choose "Run TestNG Test".
## View Test Reports:


After the test execution completes, view the HTML reports generated by Cucumber in the target/cucumber-reports directory.

For Extent Reports Path: merx-test-automation-ui/reports

Html Report Path: merx-test-automation-ui/Report/CucumberExtentReport.html

## View Project Structure :
    
    src/test/java/steps: Step definition classes for Cucumber scenarios.
    features: Feature files written in Gherkin syntax.
    Runnertestng.xmll: TestNG configuration file.
    Report/cucumber-reports: HTML reports generated by Cucumber after test execution.


## Dependencies :
 Selenium (version 4 or above) WebDriver
    TestNG
    Cucumber
    Cucumber TestNG
    Other dependencies specified in pom.xml or build.gradle.
    Jira-Xray
    Docker - Jenkins
    Gitlab


## For Running the Framework in CI/CD
	Use the below command to run the framework in CI/CD
 	  	  	 
   
     	
    1. Configure Jenkinsfile. 
     
    2.Configure Jenkins job/stages.
    
    3.Configure config.properties for environment.
    
    4.Configure Email ID for Email Notification (if required).
    
    5.Configure Xray for uploading results (if required).
    
    6.Commit the code into Gitlab or Click on Build Now in Jenkins to run the pipeline.
    
    7.Check the results/report in the respective path/logs.
 

# SeleniumTest
