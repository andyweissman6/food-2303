class SearchFacade
  def find_food(q)
    service = FoodService.new
    request = service.search_foods(q)
   require 'pry'; binding.pry
  end
end