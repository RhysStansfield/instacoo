Before ('@sign_in') do 
  FactoryGirl.create(:user)
  visit '/users/sign_in'
  fill_in 'Email', with: 'derp@derp.com'
  fill_in 'Password', with: 'coooooooooo'
  click_button 'Sign in'
  expect(current_path).to eq '/'
end

Before ('@tags_feature') do
  visit new_photo_path
  fill_in 'Description', with: 'titleone'
  attach_file 'Image', Rails.root.join('features/images/devesh.jpg')
  fill_in 'Tag list', with: "#devesh #skull #YOLO"
  click_button 'Add Image'
  visit '/photos/new'
  fill_in 'Description', with: "titletwo"
  attach_file 'Image', Rails.root.join('features/images/devesh.jpg')
  fill_in 'Tag list', with: "#fraiche #creme"
  click_button 'Add Image'
end