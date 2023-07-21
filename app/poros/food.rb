class Food
  attr_reader :id, :description, :brand_owner, :ingredients

  def initialize(data)
    @id = data[:fdcId]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
