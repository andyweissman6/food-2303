require "rails_helper"

RSpec.describe Food do
  it "exists and has attributes" do
    data = {
      :totalHits=>55579,
      :foods=> [
        {
          :fdcId=>983525,
          :description=>"SWEET POTATOES",
          :brandOwner=>"NOT A BRANDED ITEM",
          :ingredients=>"ORGANIC SWEET POTATOES."
        }]
  }

    food = Food.new(data)

    expect(food).to be_a(Food)
    # expect(food.total_hits).to eq(data[:totalHits])
    expect(food.id).to eq(data[:foods].first[:fdcId])
    expect(food.description).to eq(data[:foods].first[:description])
    expect(food.brand_owner).to eq(data[:foods].first[:brandOwner])
    expect(food.ingredients).to eq(data[:foods].first[:ingredients])
  end

  
end