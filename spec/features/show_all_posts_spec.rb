require 'rails_helper'

feature "show all posts" do
  include Features::PostHelpers

  scenario "multiple posts" do
    create_post(title: "My First Blog Post", body: "This is the text for my first post.")
    create_post(title: "My Second Blog Post", body: "This is the text for my second post.")
    visit posts_path

    expect(page).to have_css('.post-title', count: 2)
    expect(page).to have_css('.post-body', count: 2)
  end
end
