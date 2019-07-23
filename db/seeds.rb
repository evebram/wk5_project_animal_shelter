require_relative('../models/owner.rb')
require_relative('../models/animal.rb')

Animal.delete_all()
Owner.delete_all()
#retry seed nonsense

owner1 = Owner.new({
  "first_name" => "Trish",
  "last_name" => "Una"
  })
owner1.save()

owner2 = Owner.new({
  "first_name" => "Robert",
  "last_name" => "Speedwagon"
  })
owner2.save()

owner3 = Owner.new({
  "first_name" => "Daniel",
  "last_name" => "D'Arby"
  })
owner3.save()

owner4 = Owner.new({
  "first_name" => "Erina",
  "last_name" => "Pendleton"
  })
owner4.save()

owner5 = Owner.new({
  "first_name" => "Suzi",
  "last_name" => "Quatro"
  })
owner5.save()

owner6 = Owner.new({
  "first_name" => "Will",
  "last_name" => "Zeppeli"
  })
owner6.save()

animal01 = Animal.new({
  "animal_name" => "Hazel",
  "breed" => "Mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '12.07.2019',
  "owner_id" => owner1.id
  })
animal01.save()

animal02 = Animal.new({
  "animal_name" => "Fiver",
  "breed" => "Netherlands Dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '05.06.2019',
  "owner_id" => owner1.id
  })
animal02.save()

animal03 = Animal.new({
  "animal_name" => "Bigwig",
  "breed" => "Flemish Giant",
  "ready_to_adopt" => false,
  "admission_date" => '06.05.2019'
  })
animal03.save()

animal04 = Animal.new({
  "animal_name" => "Silver",
  "breed" => "Rex",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner3.id
  })
animal04.save()

animal05 = Animal.new({
  "animal_name" => "Blackberry",
  "breed" => "Netherlands Dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner5.id
  })
animal05.save()

animal06 = Animal.new({
  "animal_name" => "Dandelion",
  "breed" => "Lionhead",
  "ready_to_adopt" => true,
  "admission_date" => '15.04.2019',
  "owner_id" => owner2.id
  })
animal06.save()

animal07 = Animal.new({
  "animal_name" => "Pipkin",
  "breed" => "Mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '21.05.2019'
  })
animal07.save()

animal08 = Animal.new({
  "animal_name" => "Buckthorn",
  "breed" => "Netherlands Dwarf",
  "ready_to_adopt" => false,
  "admission_date" => '01.06.2019'
  })
animal08.save()

animal09 = Animal.new({
  "animal_name" => "Strawberry",
  "breed" => "Angora",
  "ready_to_adopt" => false,
  "admission_date" => '25.05.2019'
  })
animal09.save()

animal10 = Animal.new({
  "animal_name" => "Hawkbit",
  "breed" => "Californian",
  "ready_to_adopt" => true,
  "admission_date" => '15.06.2019'
  })
animal10.save()

animal11 = Animal.new({
  "animal_name" => "Holly",
  "breed" => "Dutch",
  "ready_to_adopt" => false,
  "admission_date" => '10.07.2019'
  })
animal11.save()
