require_relative('../models/owner.rb')
require_relative('../models/animal.rb')

Owner.delete_all()
Animal.delete_all()

owner1 = Owner.new({
  "owner_name" => "Trish",
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

animal1 = Animal.new({
  "animal_name" => "Hazel",
  "breed" => "mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '12.07.2019',
  "owner_id" => owner1.id,
  })
animal1.save()

animal2 = Animal.new({
  "animal_name" => "Fiver",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '05.06.2019',
  "owner_id" => owner1.id,
  })
animal2.save()

animal3 = Animal.new({
  "animal_name" => "Bigwig",
  "breed" => "flemish giant",
  "ready_to_adopt" => false,
  "admission_date" => '06.05.2019',
  "owner_id" => "",
  })
animal3.save()

animal4 = Animal.new({
  "animal_name" => "Silver",
  "breed" => "rex",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner3.id,
  })
animal4.save()

animal5 = Animal.new({
  "animal_name" => "Blackberry",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => true,
  "admission_date" => '28.03.2019',
  "owner_id" => owner5.id,
  })
animal5.save()

animal6 = Animal.new({
  "animal_name" => "Dandelion",
  "breed" => "lionhead",
  "ready_to_adopt" => true,
  "admission_date" => '15.04.2019',
  "owner_id" => owner2.id,
  })
animal6.save()

animal7 = Animal.new({
  "animal_name" => "Pipkin",
  "breed" => "mini-lop",
  "ready_to_adopt" => true,
  "admission_date" => '21.05.2019',
  "owner_id" => "",
  })
animal7.save()

animal8 = Animal.new({
  "animal_name" => "Buckthorn",
  "breed" => "netherlands dwarf",
  "ready_to_adopt" => false,
  "admission_date" => '01.06.2019',
  "owner_id" => "",
  })
animal8.save()

animal9 = Animal.new({
  "animal_name" => "Strawberry",
  "breed" => "angora",
  "ready_to_adopt" => false,
  "admission_date" => '25.05.2019',
  "owner_id" => "",
  })
animal9.save()

animal10 = Animal.new({
  "animal_name" => "Hawkbit",
  "breed" => "Californian",
  "ready_to_adopt" => true,
  "admission_date" => '15.06.2019',
  "owner_id" => "",
  })
animal10.save()

animal11 = Animal.new({
  "animal_name" => "Holly",
  "breed" => "Dutch",
  "ready_to_adopt" => false,
  "admission_date" => '10.07.2019',
  "owner_id" => "",
  })
animal11.save()
