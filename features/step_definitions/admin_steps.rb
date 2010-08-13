Given /^I login as:$/ do |table|
  table.hashes.each do |hash|
    @user = Factory(:user, hash)
  end
     
  And %{I go to the sign_in page}
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Sign in"}
end

Then /^the "([^"]*)" view should render$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^I am not authenticated$/ do
  visit('/users/sign_out') # ensure that at least
end

When /^I fill in the form with the following values:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

When /^I click create$/ do
  pending # express the regexp above with the code you wish you had
end

