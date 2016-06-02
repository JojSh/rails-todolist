require 'rails_helper'

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in

    create_todo 'Buy cat food'

    click_on 'Mark complete'
    click_on 'Mark incomplete'

    expect(page).to display_todo "Buy cat food"
    expect(page).not_to display_completed_todo "Buy cat food"
  end

end
