When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I attach a file "(.*?)"$/) do |arg1|
  fill_in 'Description', with: 'Fudge'
  attach_file 'Image', Rails.root.join('features/images/devesh.jpg')
end

When(/^I click_button "(.*?)"$/) do |arg1|
  click_button arg1
end

When(/^I click button Add Image$/) do
  click_button 'Add Image'
  expect(current_path).to eq '/photos'
  page.should have_content 'Photo added'
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

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, tags|
  fill_in field, with: tags
end

Then(/^I should see the tags$/) do
  page.should have_content '#devesh, #fraiche'
end

