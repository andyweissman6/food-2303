class FoodsController < ApplicationController
  def index
    @foods = SearchFacade.new.find_foods(params[:q])
  end
end
