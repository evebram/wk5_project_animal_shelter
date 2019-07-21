require ( 'sinatra' )
require ( 'sinatra/contrib/all' )
require ( 'pry-byebug' )

require_relative( './models/animal.rb' )
require_relative( './models/owner.rb' )
also_reload( './models/*')

#INDEX
get '/rabbit-rescue' do
  erb(:index)
end

#SHOW
get '/rabbit-rescue/our-bunnies' do
  @animals = Animal.all()
  erb(:our_bunnies)
end

get '/rabbit-rescue/adopted-bunnies' do
  @animals = Animal.all()
  erb(:adopted_bunnies)
end
