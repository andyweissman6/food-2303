class FoodsController < ApplicationController
  def index
    
    food = params["q"].gsub(' ', '+')
    
    conn = Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params["api_key"] = ENV["food_repo_key"]
    end
    
    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    
    json = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry

      
  end
end