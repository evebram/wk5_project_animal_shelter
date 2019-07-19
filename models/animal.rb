require_relative('../db/sql_runner')

class Animal

  attr_reader :id, :owner_id
  attr_accessor :animal_name, :breed, :ready_to_adopt, :admission_date, :owner_id

  def initialize(options)
    @id = options['id'].to_i
    @animal_name = options['animal_name']
    @breed = options['breed']
    @ready_to_adopt = options['ready_to_adopt'].to_
    @admission_date = options['admission_date'].to_i
    @owner_id = options['owner_id'].to_i
  end
end
