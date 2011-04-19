Feature: Manage assets
  In order to pass resources amongst the staff
  the client
  wants a way to upload resources to the site
  
  Scenario: Create new asset
    Given I am an authenticated user
    Given I am on the new asset page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Comment on asset
    Given I am an authenticated user
    Given the following assets:
      |name|
      |asset 1|
      |asset 2|
    Given I am on the assets page
    When I follow "asset 1"
    Then I should see "asset 1"
    When I fill in "Comment" with "comment 1"
    And I press "Submit"
    Then I should see "comment 1"
