Given(/^I am on the homepage/) do
  visit '/'
end

When(/^I click on a tag$/) do
  click_link '#YOLO'
end


Then(/^I should see all pics with that tag$/) do
  expect(page).to_not have_content 'titletwo'
end

