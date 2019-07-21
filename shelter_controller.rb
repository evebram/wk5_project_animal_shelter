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
get '/rabbit-rescue/'
