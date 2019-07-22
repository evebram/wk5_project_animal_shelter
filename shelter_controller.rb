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
  @animal = Animal.find(params[:id])
  erb(:show_animal)
end

#EDIT
get 'rabbit-rescue/:id/update' do
  @animal = Animal.find(params[:id])
  erb(:update_animal)
end

get '/rabbit-rescue/adopted-bunnies' do
  @animals = Animal.all()
  erb(:adopted_animals)
end
