require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", [])
    bob = Fish.new("bob")
    tim = Fish.new("tim")
    @river.add_fish_to_collection(bob)
    @river.add_fish_to_collection(tim)
  end

  def test_get_river_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_lose_fish
    @river.fish_collection.pop
    assert_equal(1, @river.fish_collection.length)
  end

end
