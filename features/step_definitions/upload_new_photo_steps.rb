When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I attach a file "(.*?)"$/) do |arg1|
  attach_file 'Image', Rails.root.join('features/images/devesh.jpg')
end

When(/^I click_button "(.*?)"$/) do |arg1|
  click_button arg1
end

Then(/^I should see the image$/) do
  pic = page.find 'img.uploaded-pic'
  expect(pic['alt']).not_to eq 'Missing'
end

When(/^I attach a photo without a description$/) do
  visit new_photo_path
  fill_in "Description", with: ""
  attach_file 'Image', Rails.root.join('features/images/devesh.jpg')
end

Then(/^I should see an error message$/) do
  expect(page).to have_content ""
end

