require("minitest/autorun")
require_relative('../owner.rb')

class TestOwner < MiniTest::Test

  def setup()
    options = {"id" => 1, "owner_name" => "Eve"}

    @owner = Owner.new(options)
  end

  def test_owner_name()
    assert_equal("Eve", @owner.owner_name())
  end

end
