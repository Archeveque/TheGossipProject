class UserController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:user_name]
    puts "$" * 60
  end
  def new
  end
  def create
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    author = User.find_by(pseudo: params["user"])
    puts "$" * 60
    @gossip = Gossip.create(user: author,title:params["title"],content:params["content"] )
    puts @gossip
    puts "done"
    if @gossip.save
      
       puts "saved"
     redirect_to"/static_pages/home"
    else
      puts "non valide"
    
      redirect_to"/gossips/new"
    end
  end
end
