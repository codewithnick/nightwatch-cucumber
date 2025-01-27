Feature: Automation Practice
Scenario: Validate the title of the Automation Practice page
  When I open the Automation Practice page
  Then the title of ultimateqa is "Automation Practice - Ultimate QA"

Scenario Outline: Validate if links redirect to correct pages
    When I open the Automation Practice page
    And I click on "<link_text>"
    Then I am redirected to "<expected_url>"

    Examples:
      | link_text                                                   | expected_url                                                        |
      | Big page with many elements                                 | https://ultimateqa.com/complicated-page                            |
      | Fake Landing Page                                           | https://ultimateqa.com/fake-landing-page                           |
      | Fake Pricing Page                                           | https://ultimateqa.com/automation/fake-pricing-page/                |
      | Fill out forms                                              | https://ultimateqa.com/filling-out-forms/                          |
      | Learn how to automate an application that evolves over time | https://ultimateqa.com/sample-application-lifecycle-sprint-1/      |
      | Login automation                                            | https://courses.ultimateqa.com/users/sign_in                       |
      | Interactions with simple elements                           | https://ultimateqa.com/simple-html-elements-for-automation/        |

Scenario: Fetch JS/console error on browser developer tools
    When I open the Automation Practice page
    And I fetch JavaScript console errors
    Then The logs should be empty

Scenario Outline: click on Education dropdown and select /click Selenium Resources.
    When I open the Automation Practice page
    And I click on "<menu_item>"
    And I click on "<sub_menu_item>"
    Then I am redirected to "<expected_url>"

    Examples:
      | menu_item  | sub_menu_item      | expected_url                                                    |
      | Education  | Selenium Resources | https://ultimateqa.com/best-selenium-webdriver-resources/       |