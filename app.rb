# set :session_secret, 'super secret'

require 'sinatra'

  get '/' do
    "Hello World"
  end

  get '/random-cat' do
    @random_pet_names = 2.times.map { ["Amigo", "Misty", "Almond"].sample }.join(" and ")
    erb(:index)
  end

  get '/named-cat' do
    p params
    @random_pet_names = params[:name]
    erb(:index)
  end