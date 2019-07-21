require_relative('../db/sql_runner')
require_relative('./owner.rb')

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
    @admission_date = options['admission_date']
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

  def self.all()
    sql = "SELECT * FROM animals"
    animals = SqlRunner.run( sql )
    result = animals.map { |animal| Animal.new(animal) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM animals
           WHERE id = $1"
    values = [@id]
    animals = SqlRunner.run(sql, values)
    result = Animal.new(animal.first)
    return result
  end

  def update()
    sql = "UPDATE animals
           SET (
             animal_name,
             breed,
             ready_to_adopt,
             admission_date,
             owner_id
             ) = (
               $1, $2, $3, $4, $5
               )
              WHERE id = $6"
    values = [@animal_name, @breed, @ready_to_adopt, @admission_date, @owner_id]
    SqlRunner.run(sql, values)
  end

  def adopted_animals()
    sql = "SELECT * FROM animals
           WHERE owners_id = $1"
    values = (@owners_id)
    animal_data = SqlRunner.run(sql, values)
    animal = Animal.map_item(animal_data)
    return animal
  end

end
