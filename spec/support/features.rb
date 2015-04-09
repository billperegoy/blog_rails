module Features
  module PostHelpers
    def create_post(title:, body:)
      visit root_path
      fill_in "Title", with: title 
      fill_in "Body", with: body 
      click_on "Create Post"
    end
  end
end
