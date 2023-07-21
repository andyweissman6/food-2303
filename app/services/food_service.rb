class FoodService
  def search_food(q)
    q = q.gsub(' ', '+')

    get_url("/fdc/v1/foods/search?query=#{q}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["food_repo_key"]
    end
  end
end