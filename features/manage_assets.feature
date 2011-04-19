Feature: Manage assets
  In order to pass resources amongst the staff
  the client
  wants a way to upload resources to the site
  
  Scenario: Anonymous users cannot create assets
    Given I am on the assets page
    Then I should not see "Add Asset"

  Scenario: Authenticated user can see create links
    Given I am an authenticated user
    Given I am on the assets page
    Then I should see "Add Asset"

  Scenario: Authenticated user can create new asset
    Given I am an authenticated user
    Given I am on the new asset page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"
