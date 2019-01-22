require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup
    bob = Fish.new("bob")
    fish_collection = [bob]
    @river = River.new("Amazon", fish_collection)
    @bear = Bear.new("Yogi", "Grizzly", [])
  end

  

end
