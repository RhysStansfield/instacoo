Given(/^I visit the Sign Up page$/) do
  visit '/users/sign_up'
end

When(/^I enter my details$/) do
  fill_in 'Email', with: 'derp@derp.com'
  fill_in 'Password', with: 'coooooooooo'
  fill_in 'Password confirmation', with: 'coooooooooo'
  click_button 'Sign up'
  # expect(User.last.email).to eq 'derp@derp.com'
end

Then(/^I should have a user account$/) do
  page.should have_content 'Welcome!  You have signed up successfully.'
end

Given(/^a user has signed up$/) do
   FactoryGirl.create(:user)
end

When(/^I press "(.*?)"$/) do |link|
  click_link link
end

Given(/^I visit the home page$/) do
  visit '/'
end

When(/^I enter my log in details$/) do
  fill_in 'Email', with: 'derp@derp.com'
  fill_in 'Password', with: 'coooooooooo'
  click_button 'Sign in'
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Given(/^I am signed in$/) do
  FactoryGirl.create(:user)
  visit '/users/sign_in'
  fill_in 'Email', with: 'derp@derp.com'
  fill_in 'Password', with: 'coooooooooo'
  click_button 'Sign in'
  expect(current_path).to eq '/'
end









