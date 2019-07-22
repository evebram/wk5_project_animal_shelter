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

#SHOW
get '/rabbit-rescue/:id' do
  @animal = Animal.find(params['id'])
  erb(:show)
end

#EDIT
get '/rabbit-rescue/:id/update' do
  @animal = Animal.find(params['id'])
  erb(:update_animal)
end

#UPDATE
post '/rabbit-rescue/:id' do
  animal = Animal.new(params)
  animal.update
  redirect to '/rabbit-rescue/:id'
end

#DELETE
post '/rabbit-rescue/:id/delete' do
  animal = Animal.find(params['id'])
  animal.delete
  redirect to '/rabbit-rescue/'
end

get '/rabbit-rescue/adopted' do
  @animals = Animal.all()
  erb(:adopted_animals)
end

# binding.pry
# nil
