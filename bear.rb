class Bear

  attr_accessor :bear_name, :bear_type, :food_collection

  def initialize(bear_name, bear_type, food_collection)
    @bear_name = bear_name
    @bear_type = bear_type
    @food_collection = []
  end

  # def add_fish_food_collection
  #
  # end

end

# A Bear should be able to take a Fish from the River and add it to its collection of food
