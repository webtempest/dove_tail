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
    When I am on create page
    When I fill in the form with the following values:
    |Title|Body|
    |Demo Page|Lorum Ipsum|
    And I click create
    Then I should see "Page created successfully"
    

