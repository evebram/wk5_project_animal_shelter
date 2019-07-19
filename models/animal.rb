require_relative('../db/sql_runner')

class Animal

  attr_reader :id, :owner_id
  attr_accessor :animal_name, :breed, :ready_to_adopt, :admission_date, :owner_id

  def initialize(options)
    @id = options['id'].to_i
    @animal_name = options['animal_name']
    @breed = options['breed']
    #how to define a boolean like this?
    @ready_to_adopt = options['ready_to_adopt']||=false
    #how to create a date in ruby?
    @admission_date = options['admission_date'].to_i
    @owner_id = options['owner_id'].to_i
  end

  def save()
  sql = "INSERT INTO animals
         (
           animal_name,
           breed,
           ready_to_adopt,
           admission_date,
           owner_id
          )
         VALUES
         (
           $1, $2, $3, $4, $5
           )
           RETURNING *"
  values = [@animal_name, @breed, @ready_to_adopt, @admission_date, @owner_id]
  animal_data = SqlRunner.run(sql, values)
  @id = animal_data.first()['id'].to_i
  end

end
