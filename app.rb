# set :session_secret, 'super secret'

require 'sinatra'

  get '/' do
    "Hello World"
  end

  get '/cat' do
    @random_pet_names = 2.times.map { ["Amigo", "Misty", "Almond"].sample }.join(" and ")
    erb(:index)
  end
