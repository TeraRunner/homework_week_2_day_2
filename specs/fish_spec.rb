require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("bob")
  end

  def test_get_fish_name
    assert_equal("bob", @fish.fish_name)
  end

end
