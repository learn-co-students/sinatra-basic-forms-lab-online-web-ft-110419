require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do # has a link with the text "List a Puppy"
    erb :index           # has a link to list a puppy that links to '/new'
    end

    get '/new' do # Puppy form
        erb :create_puppy
    end

    post '/puppy' do # displays the new puppy
        @puppy = Puppy.new(name: params[:name], breed: params[:breed], age: params[:age])
        erb :display_puppy
    end

end
