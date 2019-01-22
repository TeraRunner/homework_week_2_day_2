require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly", [])
    bob = Fish.new("bob")
    tim = Fish.new("tim")
    @river = River.new("Amazon", [])
    @river.add_fish_to_collection(bob)
    @river.add_fish_to_collection(tim)
  end

  def test_fish_food_collection
    @river.lose_fish
    @bear.add_fish_to_collection(tim)
    assert_equal(["tim"], @bear.food_collection)
    assert_equal(["bob"], @rvier.fish_collection)
  end

end
