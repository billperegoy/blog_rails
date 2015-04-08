require 'rails_helper'

feature "user create a post" do
  scenario "with valid data" do
    create_post(title: "My First Blog Post", body: "This is the text for my first post.")

    expect(page).to have_content("My First Blog Post")
    expect(page).to have_content("This is the text for my first post.")
  end

  scenario "with invalid data" do
    create_post(title: "", body: "This is the text for my first post.")

    expect(page).to have_content("can't be blank")
  end

  private
  def create_post(title:, body:)
    visit root_path
    fill_in "Title", with: title 
    fill_in "Body", with: body 
    click_on "Create Post"
  end
end
