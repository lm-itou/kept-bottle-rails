module BottlesHelper
  def options_of_restaurants
    options_from_collection_for_select(Restaurant.all, :id, :name)
  end
end
