require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/puppy' do
    @puppy = Puppy.new(params["name"], params["breed"], params["age"])
    #binding.pry
    erb :display_puppy
  end

  get '/new' do
    erb :create_puppy
  end
end
