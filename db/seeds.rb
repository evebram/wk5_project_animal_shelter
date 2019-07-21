require_relative('../models/owner.rb')
require_relative('../models/animal.rb')

owner1 = Owner.new({
  "owner_name" => "Eve",
  })
owner1.save()

owner2 = Owner.new({
  "owner_name" => "Joseph"
  })
owner2.save()



animal1 = Animal.new({
  "animal_name" => "Michelangelo",
  "breed" => "mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '12.07.2019',
  "owner_id" => owner1.id,
  })
animal1.save()

animal2 = Animal.new({
  "animal_name" => "Bruno",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '06.06.2019',
  "owner_id" => nil,
  })
animal2.save()
