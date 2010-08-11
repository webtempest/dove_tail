Feature: Admin
  In order to manage the website
  As an administrator
  I want a backend to the website that allows editing

  Background:
    Given I am logged in as:
    |email|password|
    |bodie@dovetailtimbers.com|12345|
    When I login
    Then I should see the text "You have logged in successfully"
    And the "admin" view should render
  
  Scenario: User adds a new page
    When I am on create page
    When I fill in the form with the following values:
    |Title|Body|
    |Demo Page|Lorum Ipsum|
    And I click create
    Then I should see "Page created successfully"
    

