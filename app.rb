require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do  #renders a form that can POST a name, breed, and age
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])

     erb :display_puppy

     # recieves a request from /new at /puppy
     #displays the puppy information dynamically
  end
end
