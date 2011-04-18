Feature: User Authentication
  In order to [goal]
  [stakeholer]
  wants [behaviour]

  Scenario: Register new user, failing
    Given I am on the registration page
    When I fill in "Email" with "foo@bar.com"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password2"
    And I press "Sign up"
    Then I should see "Password doesn't match confirmation"

  Scenario: Register new user successfully
    Given I am on the registration page
    When I fill in "Email" with "foo@bar.com"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I press "Sign up"
    Then I should see "You have signed up successfully"
