require 'rails_helper'

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    create_todo 'Buy cat food'

    click_on 'Mark complete'

    expect(page).to display_completed_todo "Buy cat food"
  end

end
