require 'rails_helper'

RSpec.describe Comment, type: :system do
it "creates a comment successfully with valid information" do
  fill_in 'body', with: "Test message"
  expect { click_button "Submit" }.to change(Comment, :count).by(1)
  expect(page).to have_selector("textarea", visible: "Test message")
  end
end
it "shows comment of the user" do
  visit hotel_path hotel
  fill_in 'body', with: "comment1"
  click_button "Submit"
  expect(page).to have_content("comment1")
end  
