Given /^I login as:$/ do |table|
  table.hashes.each do |hash|
    @user = Factory(:user, hash)
  end
     
  And %{I go to the sign_in page}
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Sign in"}
end

When /^I create a new page with the following:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end