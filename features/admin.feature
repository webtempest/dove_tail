Feature: Admin
  In order to manage the website
  As an administrator
  I want a backend to the website that allows editing

  Background:
    Given I login as:
    |email|password|
    |plattsmw@gmail.com|123456|
    And I go to the user_root page
    Then I should see "Welcome Bodie" within "h1"
    
  Scenario: User adds a new page
    Given I go to the pages_root page
    And show me the page
    When I fill in the following:
    |page_title|Demo|
    |page_body|Lorum Ipsum|
    And I press "Create"
    Then I should see "Page created successfully"
    
  Scenario: View a created page
    When I create a new page with the following:
    |Title|Body|
    |Demo|Lorum Ipsum|
    And I go to the "Demo" page
    Then I should see "Demo"
    And I should see "Lorum Ipsum"
    

