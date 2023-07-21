require "rails_helper"

RSpec.describe "/" do
  it "has form to search foods" do
    visit root_path
    expect(page).to have_button "Search"

    fill_in :q, with: "sweet potatoes"
    click_button "Search"

    expect(current_path).to eq(foods_path)
  end
end