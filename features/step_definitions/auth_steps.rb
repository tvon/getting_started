Given /^I have one\s+user "([^\"]*)" with password "([^\"]*)"$/ do |email, password|
  @user = User.new(:email => email,
                   :first_name => 'John',
                   :last_name => 'Doe',
                   :password => password,
                   :password_confirmation => password).save!
end

Given /^I am an authenticated user$/ do
  email = 'user@example.com'
  password = 'password'

  Given %{I have one user "#{email}" with password "#{password}"}
  And %{I go to login}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I press "Sign in"}
end
