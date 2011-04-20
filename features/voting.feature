Feature: Voting
  In order to determine which assets and comments contribute the most to the community
  we want to allow users to vote on assets and comments.

  Scenario: User can vote on asset
    Given I am an authenticated user
    Given the following assets:
      |name|
      |asset alpha|
      |asset beta|
    Given I am on the assets page
    When I follow "asset alpha"
    Then I should see "+0" within "#upvote"
    Then I should see "-0" within "#downvote"
    When I follow "+"
    Then I should see "+1" within "#upvote"

  @javascript
  Scenario: Voting via Ajax
    Given I am an authenticated user
    Given the following assets:
      |name|
      |asset alpha|
      |asset beta|
    Given I am on the assets page
    When I follow "asset alpha"
    Then I should see "+0" within "#upvote"
    Then I should see "-0" within "#downvote"
    When I follow "+"
    Then I should see "+1" within "#upvote"
