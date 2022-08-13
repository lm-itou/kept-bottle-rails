module BottlesHelper
  def options_of_restaurants
    options_from_collection_for_select(Restaurant.all, :id, :name)
  end

  def options_of_status
    [["キープ中","active"],["空","empty"],["期限切れ","expired"]]
  end
end
