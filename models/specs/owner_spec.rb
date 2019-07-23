require("minitest/autorun")
require_relative('../owner.rb')

class TestOwner < MiniTest::Test

  def setup()
    options = {"id" => 1, "first_name" => "Eve", "last_name" => "Bramley"}

    @owner = Owner.new(options)
  end

  def test_owner_first_name()
    assert_equal("Eve", @owner.first_name())
  end

  def test_owner_last_name()
    assert_equal("Bramley", @owner.last_name())
  end

end
