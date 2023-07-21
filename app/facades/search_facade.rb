class SearchFacade
  def find_foods(q)
    service = FoodService.new
    # Pass the 'q' parameter to the search_food method
    request = service.search_food(q)
    @foods = request[:foods].map do |food|
      # require 'pry'; binding.pry
      Food.new(food)
    end
  end
end
