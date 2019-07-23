require_relative('../models/owner.rb')
require_relative('../models/animal.rb')

Animal.delete_all()
Owner.delete_all()
#retry seed nonsense

owner1 = Owner.new({
  "owner_name" => "Trish"
  })
owner1.save()

owner2 = Owner.new({
  "owner_name" => "Joseph"
  })
owner2.save()

owner3 = Owner.new({
  "owner_name" => "Bruno"
  })
owner3.save()

owner4 = Owner.new({
  "owner_name" => "Erin"
  })
owner4.save()

owner5 = Owner.new({
  "owner_name" => "Kathryn"
  })
owner5.save()

owner6 = Owner.new({
  "owner_name" => "Johnny"
  })
owner6.save()

animal01 = Animal.new({
  "animal_name" => "Hazel",
  "breed" => "mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '12.07.2019',
  "owner_id" => owner1.id
  })
animal01.save()

animal02 = Animal.new({
  "animal_name" => "Fiver",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '05.06.2019',
  "owner_id" => owner1.id
  })
animal02.save()

animal03 = Animal.new({
  "animal_name" => "Bigwig",
  "breed" => "flemish giant",
  "ready_to_adopt" => false,
  "admission_date" => '06.05.2019'
  })
animal03.save()

animal04 = Animal.new({
  "animal_name" => "Silver",
  "breed" => "rex",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner3.id
  })
animal04.save()

animal05 = Animal.new({
  "animal_name" => "Blackberry",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner5.id
  })
animal05.save()

animal06 = Animal.new({
  "animal_name" => "Dandelion",
  "breed" => "lionhead",
  "ready_to_adopt" => true,
  "admission_date" => '15.04.2019',
  "owner_id" => owner2.id
  })
animal06.save()

animal07 = Animal.new({
  "animal_name" => "Pipkin",
  "breed" => "mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '21.05.2019'
  })
animal07.save()

animal08 = Animal.new({
  "animal_name" => "Buckthorn",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => false,
  "admission_date" => '01.06.2019'
  })
animal08.save()

animal09 = Animal.new({
  "animal_name" => "Strawberry",
  "breed" => "angora",
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
