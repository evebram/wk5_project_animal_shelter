require_relative('../db/sql_runner')

class Owner

  attr_reader :id
  attr_accessor :owner_name

  def initialize(options)
    @id = options['id'].to_i
    @owner_name = options['owner_name']
  end

  def save()
    sql = "INSERT INTO owners
           (
             owner_name
           )
           VALUES
           (
             $1
           )
            RETURNING *"
    values = [@owner_name]
    owner_data = SqlRunner.run(sql, values)
    @id = owner_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM owners"
    owners = SqlRunner.run( sql )
    result = owners.map { |owner| Owner.new(owner) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM owners
           WHERE id = $1"
    values = [@id]
    owner = SqlRunner.run(sql, values)
    result = Owner.new(owner.first)
    return result
  end

  def animals()
    sql = "SELECT * FROM animals
           WHERE owner_id = $1"
    values = [@id]
    animal_data = SqlRunner.run(sql, values)
    return Animal.map_items(animal_data)
  end

  def self.delete_all()
    sql = "DELETE FROM owners"
    SqlRunner.run(sql)
  end

end
