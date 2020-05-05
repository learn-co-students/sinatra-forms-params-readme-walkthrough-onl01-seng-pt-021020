require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end
  
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end 
  
  #Let's use the key-value pairs in params to return the following phrase, using good-old string interpolation^^

  

end

#We are going to connect HTML forms to a Sinatra application by building a form that takes a user's name and favorite food and returns an interpolated string. 