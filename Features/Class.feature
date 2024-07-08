@Class
Feature: Merchandise Class Setup page

  Background: 
    Given The user navigates to login page of Merx
    When The user login Merx application with email as and password
    And The user clicks on the Sign in button
    And User Can Select Company "PEP00002COMPANY12"
    And Click on merchandise Menu
    

  @ClassSetup
  Scenario: Verify Class setup
    When I Create Merchandise data with API request
    When click on class tab
    When User select department name in class
    And Enter Class Name
    And The user select Reporting category "Apparel"
    And User select item Type "mobile"
    And The user select Alternative Hierarchy "Kids#Jeans#Spring Season#Christmas#Back To school#Bottoms#Cartoons"
    And verify that the Active status is selected by default from the Status dropdown
    And submit the page
    Then The page has landing the Subclass page
    
    @ClassErrorMessage
  Scenario: Verify error messages are displayed in class when mandatory fields are left blank
     When click on class tab 
    When click on save button in class
    Then Validate depClassSubclass error message on the screen

  @ClassFilters
  Scenario Outline: Verify the filter functionality in Department view page
    When The user on the Merchandise Pages
    And click on class tab
    Then I apply class filters "<BusinessUnit>","<DivisionUnit>","<GroupUnit>","<Department>","<Accountable>","<Responsible>","<Reporting Category>","<Alternate Hierarchy>","<Status>"
    And I Reset and check the class filter results

    Examples: 
      | BusinessUnit | DivisionUnit | GroupUnit  | Department | Accountable   | Responsible | Reporting Category | Alternate Hierarchy | Status |
      | PEP00432     | SmartPhone   | SmartPhone | SmartPhone | Clark, Ronald |             | Footwear           | Kids,Avengers,Jeans | Active |
#      | PEP00432     | SmartPhone   | SmartPhone | SmartPhone |               |               |                    |                     |          |
#      | PEP00432     | SmartPhone   | SmartPhone | SmartPhone |               |               | Bath               | Avengers            | Active   |
#      | PEP00432     | SmartPhone   | SmartPhone | SmartPhone |               |               | Bath               | Jeans               | Inactive |
