require_relative('../models/owner.rb')
require_relative('../models/animal.rb')

owner1 = Owner.new({
  "owner_name" => "Eve"
  })

animal1 = Animal.new({
  "animal_name" => "Michelangelo",
  "breed" => "mini=lop",
  "ready_to_adopt" => true,
  "admission_date" => 11,
  "owner_id" => owner1.id
  })
