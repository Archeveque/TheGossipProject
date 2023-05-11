class SessionsController < ApplicationController
  def new
  end
  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    city = City.find_by(name: params["city"])
    puts city
    puts "$" * 60
    @user = User.create(pseudo: params["user_name"],email:params["email"],description:params["description"],age:params["age"],city:city,password: params["password"] )
    puts @user
    puts "done"
    puts @user.save
    if @user.save
       puts "saved"
     redirect_to"/static_pages/home"
    else
      puts "non valide"
      redirect_to"/sessions/new"
    end
  end
end
