# set :session_secret, 'super secret'

require 'sinatra'

  get '/' do
    "Hello World"
  end

  get '/cat' do
    "<div style='border: dashed red;'> 
      <img src='https://bit.ly/3pyLUpj'> 
    </div>"
  end