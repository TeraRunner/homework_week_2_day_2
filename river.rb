class River

  attr_accessor :river_name, :fish_collection

  def initialize(river_name, fish_collection)
    @river_name = river_name
    @fish_collection = []
  end

  def get_river_name
    return @river_name
  end

  def lose_fish
    @fish_collection.pop
  end

end
