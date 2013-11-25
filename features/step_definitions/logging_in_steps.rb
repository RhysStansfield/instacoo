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
