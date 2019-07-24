require ( 'sinatra' )
require ( 'sinatra/contrib/all' )
require ( 'pry-byebug' )

require_relative( './models/animal.rb' )
require_relative( './models/owner.rb' )
also_reload( './models/*')

#INDEX
get '/rabbit-rescue' do
  @animals = Animal.all()
  erb(:index)
end

#SHOW OWNERS
get '/rabbit-rescue/owners' do
  @owners = Owner.all()
  erb(:owners)
end

#SHOW READY TO ADOPT
get '/rabbit-rescue/ready-to-adopt' do
  @animals = Animal.animal_ready(true)
  erb(:adoption_ready)
end

#SHOW NOT READY FOR ADOPTION
get '/rabbit-rescue/not-ready' do
  @animals = Animal.animal_ready(false)
  erb(:not_adoptable)
end

#SHOW BY BREED
post '/rabbit-rescue/by-breed' do
  @animals = Animal.find_by_breed(params['breed'])
  erb(:breed)
end

get '/rabbit-rescue/by-breed' do
  erb(:breed_start)
end

#NEW BUNNY
get '/rabbit-rescue/register-bunny' do
  erb(:register_animal)
end

#CREATE BUNNY
post '/rabbit-rescue' do
  @animal = Animal.new(params)
  @animal.save()
  erb(:create)
end

#NEW OWNER
get '/rabbit-rescue/register-owner' do
  erb(:register_owner)
end

#CREATE OWNER
post '/rabbit-rescue' do
  @owner = Owner.new(params)
  @owner.save()
  erb(:create)
end

#SHOW
get '/rabbit-rescue/:id' do
  @animal = Animal.find(params['id'])
  erb(:show)
end

#EDIT
get '/rabbit-rescue/:id/update' do
  @owners = Owner.all
  @animal = Animal.find(params['id'])
  erb(:update_animal)
end

#UPDATE
post '/rabbit-rescue/:id' do
  animal = Animal.new(params)
  animal.update
  redirect to "/rabbit-rescue/#{params['id']}"
end

#DELETE
post '/rabbit-rescue/:id/delete' do
  animal = Animal.find(params['id'])
  animal.delete
  redirect to '/rabbit-rescue'
end

get '/rabbit-rescue/adopted' do
  @animals = Animal.all()
  erb(:adopted_animals)
end

# binding.pry
# nil
