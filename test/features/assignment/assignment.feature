Feature: The Internet
Scenario: Validate the title of the Internet page
  When I open the Internet page
  Then the title of the Internet Page is The Internet

Scenario Outline: Validate if links redirect to correct pages  
    When I open the Internet page
    Then I check all links on the page
    
Scenario: Fetch JS/console error on browser developer tools
    When I open the Internet page
    And I fetch JavaScript console errors

