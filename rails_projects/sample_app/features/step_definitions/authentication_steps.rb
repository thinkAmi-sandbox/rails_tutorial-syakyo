Given /^a user visits the signin page$/ do
  visit signin_path
end

When /~he submits invalid signin information$/ do
  click_button "Sign in"
end

Then /^he should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^a user visits the siginin page$/ do
  @user = User.create(name: "Example user",
                      email: "user@example.com",
                      password: "foobar",
                      password_confirmation: "foobar"
                      )
end

When /^the user submits vaild signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^he should see his profile page$/ do
  expect(page).to have_title(@user.name)
end

Then /^he should see a signout link$/ do
  expect(page).to have_link('Sign in', herf: signout_path)
end