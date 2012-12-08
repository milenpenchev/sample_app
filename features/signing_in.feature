Feature: Signing in

  Scenario: Unsuccessful signin
    Given I visit the signin page
    When I submit invalid signin information
    Then I should see an error message

  Scenario: Successful signin
    Given I visit the signin page
    And I have an account
    And I submit valid signin information
    Then I should see my profile page
    And I should see a signout link