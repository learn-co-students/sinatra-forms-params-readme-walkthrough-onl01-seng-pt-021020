require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end
  
  post '/food' do
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end 
  
  #Let's use the key-value pairs in params to return the following phrase, using good-old string interpolation^^
  
  
  #Notice that both of the attributes from the form are covered in this route: The method post and the action /food. It's almost like a game of catch - the form is throwing the data to the server, which catches it by having the same receiving address (/food) and way of receiving the data (post).
  
  #All user submitted data will appear in a params hash accessible throughout our Sinatra controllers. The name attribute of an <input> corresponds to a key in the params hash for that data.

#If you create a text field input with <input type="text" name="favorite_food">, whenever the user submits that form, you will be able to access the data entered into the Favorite Foods text box via params[:favorite_food].

  

end

#We are going to connect HTML forms to a Sinatra application by building a form that takes a user's name and favorite food and returns an interpolated string. 