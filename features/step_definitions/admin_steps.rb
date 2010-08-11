Given /^I have one\s+user "([^\"]*)" with password "([^\"]*)" and login "([^\"]*)"$/ do |email, password, login|
  Factory.build(:user, 
             :email => email,
             :login => login,
             :password => password,
             :password_confirmation => password)
end

Given /^I am a authenticated user$/ do
  user = Factory.create(:user)
end

When /^I login$/ do
  user = Factory.create(:user)

  Given %{I have one user "#{user.email}" with password "#{user.password}"}
  And %{I go to login}
  And %{I fill in "user_email" with "#{email}"}
  And %{I fill in "user_password" with "#{password}"}
  And %{I press "Sign in"}
end

Then /^I should see the text "([^"]*)"$/ do |arg1|
  response.should have_selector("h1", "Welcome Bodie")
end

Then /^the "([^"]*)" view should render$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

Given /^I am logged in as:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When /^I fill in the form with the following values:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When /^I click create$/ do
  pending # express the regexp above with the code you wish you had
end

