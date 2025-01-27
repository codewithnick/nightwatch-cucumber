Feature: Automation Practice
Scenario: Validate the title of the Automation Practice page
  When I open the Automation Practice page
  Then the title of ultimateqa is "Automation Practice - Ultimate QA"

Scenario: Validate if all links are working
    When I open the Automation Practice page
    And I click on "Big page with many elements"
    Then I am redirected to "https://ultimateqa.com/complicated-page"

    When I open the Automation Practice page
    And I click on "Fake Landing Page"
    Then I am redirected to "https://ultimateqa.com/fake-landing-page"

    When I open the Automation Practice page
    And I click on "Fake Pricing Page"
    Then I am redirected to "https://ultimateqa.com/automation/fake-pricing-page/"

    When I open the Automation Practice page
    And I click on "Fill out forms"
    Then I am redirected to "https://ultimateqa.com/filling-out-forms/"

    When I open the Automation Practice page
    And I click on "Learn how to automate an application that evolves over time"
    Then I am redirected to "https://ultimateqa.com/sample-application-lifecycle-sprint-1/"

    When I open the Automation Practice page
    And I click on "Login automation"
    Then I am redirected to "https://courses.ultimateqa.com/users/sign_in"

    When I open the Automation Practice page
    And I click on "Interactions with simple elements"
    Then I am redirected to "https://ultimateqa.com/simple-html-elements-for-automation/"



Scenario:  Fetch JS/console error on browser developer tools
    When I open the Automation Practice page
    And I fetch JavaScript console errors
    Then The logs should be empty

Scenario: click on  Education dropdown and select /click Selenium Resources.
    When I open the Automation Practice page
    And I click on "Education"
    And I click on "Selenium Resources"
    Then I am redirected to "https://ultimateqa.com/best-selenium-webdriver-resources/"