module BottlesHelper
  def options_of_restaurants
    options_from_collection_for_select(Restaurant.all, :id, :name)
  end

  def options_of_status
    [["Active","active"],["Empty","empty"],["Expired","expired"]]
  end
end
