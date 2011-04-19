Feature: Site Navigation
  In order to find your way around the site
  the user
  wants to be able to navigate easily from the hoem page

  Scenario: Login, Logout and view Profile
    Given I am on the home page
    Then I should see "Sign in"
    And I should see "Posts"
    And I should see "Assets"
    And I should see "Register"
