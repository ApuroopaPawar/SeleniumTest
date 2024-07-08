@SubClass
Feature: Mechandise sub class Setup page

  Background:
    Given The user navigates to login page of Merx
    When The user login Merx application with email as and password
    And  The user clicks on the Sign in button
    And User Can Select Company "PEP00002COMPANY12"
    And Click on merchandise Menu
    

  @SubClassSetup
  Scenario: Verify SubClass setup
    When I Create Merchandise data with API request
    When click on subclass tab
    When User select class name in Subclass
    And Enter SubClass Name
    And The user select Reporting category "Apparel"
    And User select item Type "mobile"
   #And The user select Alternative Hierarchy "Kids#Jeans#Spring Season#Christmas#Back To school#Bottoms#Cartoons"
    And verify that the Active status is selected by default from the Status dropdown
    And submit the page
    Then The page has move to home page
    
     @SubClassErrorMessage
  Scenario: Verify error messages are displayed in subclass when mandatory fields are left blank
      When click on subclass tab
    When click on save button in subclass
    Then Validate depClassSubclass error message on the screen

  @SubClassFilters
  Scenario Outline: Verify the filter functionality in Department view page
    When The user on the Merchandise Pages
    And click on subclass tab
    Then I apply subclass filters "<BusinessUnit>","<DivisionUnit>","<GroupUnit>","<Department>","<ClassData>","<Accountable>","<Responsible>","<Reporting Category>","<Alternate Hierarchy>","<Status>"
    And I Reset and check the subclass filter results
    Examples:
      | BusinessUnit | DivisionUnit | GroupUnit  | Department | ClassData  | Accountable   | Responsible | Reporting Category | Alternate Hierarchy | Status |
      | SmartPhone   | SmartPhone   | SmartPhone | SmartPhone | SmartPhone | Clark, Ronald |             | Footwear           | Kids,Avengers,Jeans | Active |
#      | SmartPhone   | SmartPhone   | SmartPhone | SmartPhone | SmartPhone |               |               |                    |                     |          |
#      | SmartPhone   | SmartPhone   | SmartPhone | SmartPhone | SmartPhone |               |               | Bath               | Avengers            | Active   |
#      | SmartPhone   | SmartPhone   | SmartPhone | SmartPhone | SmartPhone |               |               | Bath               | Jeans               | Inactive |