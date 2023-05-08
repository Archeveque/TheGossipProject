class UserController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:user_name]
    puts "$" * 60
  end
end
