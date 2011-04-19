Feature: User Authentication
  In order to [goal]
  [stakeholer]
  wants [behaviour]

  Scenario: Attempting to register with mismatching passwords
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

  Scenario: Edit user information
    Given I am an authenticated user
    Given I am on the profile page
    When I fill in "First Name" with "John"
    And I fill in "Last Name" with "Doe"
    And I fill in "Current password" with "password"
    And I press "Save"
