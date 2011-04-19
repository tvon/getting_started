Feature: Commenting
  In order to collaborate on resource management
  users should be able to comment on assets

  Scenario: Authenticated user can comment on asset
    Given I am an authenticated user
    Given the following assets:
      |name|
      |asset 1|
      |asset 2|
    Given I am on the assets page
    When I follow "asset 1"
    Then I should see "asset 1"
    When I fill in "comment_body" with "comment 1"
    And I press "Contribute Comment"
    Then I should see "comment 1"

  @akephalos
  Scenario: Commenting via Ajax
    Given I am an authenticated user
    Given the following assets:
      |name|
      |asset 2|
    Given I am on the assets page
    When I follow "asset 2"
    Then I should see "asset 2"
    When I fill in "comment_body" with "comment 1"
    And I press "Contribute Comment"
    Then I should see "comment 1"
