require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    bob = Fish.new("bob")
    @river = River.new("Amazon", [bob])
  end

  def test_get_river_name
    assert_equal("Amazon", @river.river_name)
  end

  def test_lose_fish
    @river.fish_collection.pop
    assert_equal(0, @river.fish_collection.length)
  end

end
