When(/^I click "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should be on the profile page$/) do
  expect(current_path).to eq '/profile'
end