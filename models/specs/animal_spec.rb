require("minitest/autorun")
require_relative('../animal.rb')

class TestAnimal < MiniTest::Test

  def setup()
    options = {"id" => 1, "animal_name" => "Michelangelo", "breed" => "mini-lop", "ready_to_adopt" => true, "admission_date" => 19, "owner_id" => 3}

    @animal = Animal.new(options)
  end

  def test_animal_name()
    #result = @animal.animal_name()
    assert_equal("Michelangelo", @animal.animal_name())
  end

  def test_animal_breed()
    assert_equal("mini-lop", @animal.breed())
  end

end
