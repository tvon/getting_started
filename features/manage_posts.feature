Feature: Manage posts
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Create new post
    Given I am an authenticated user
    Given I am on the new post page
    When I fill in "Title" with "title 1"
    And I fill in "Author" with "author 1"
    And I fill in "Body" with "body 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "author 1"
    And I should see "body 1"

  Scenario: Attempt to delete post as unauthenticated user
    Given the following posts:
      |title|author|body|
      |title 1|author 1|body 1|
      |title 2|author 2|body 2|
    When I delete the 1st post
    Then I should see "You need to sign in or sign up before continuing"

  Scenario: Delete post
    Given I am an authenticated user
    Given the following posts:
      |title|author|body|
      |title 1|author 1|body 1|
      |title 2|author 2|body 2|
      |title 3|author 3|body 3|
      |title 4|author 4|body 4|
    When I delete the 3rd post
    Then I should see the following posts:
      |title 1|By: author 1|body 1|Destroy|
      |title 2|By: author 2|body 2|Destroy|
      |title 4|By: author 4|body 4|Destroy|
