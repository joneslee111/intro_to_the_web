# set :session_secret, 'super secret'

require 'sinatra'

  get '/' do
    "Hello World"
  end

  get '/random-cat' do
    @pet_names = 2.times.map { ["Amigo", "Misty", "Almond"].sample }.join(" and ")
    erb(:index)
  end

  get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
  end
