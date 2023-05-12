class LoginController < ApplicationController
def create
  # cherche s'il existe un utilisateur en base avec l’e-mail
  user = User.find_by(email:params["email"])
  puts params
  puts user
  puts user.password
  puts "p #{params["password"]}"

  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
  if user #&& user.authenticate(params["password"])
    session[:user_id] = user.id
    # redirige où tu veux, avec un flash ou pas
    puts "correct info"
    redirect_to"/login/profile"
  else
    flash.now[:danger] = 'Invalid email/password combination'
    puts "wrong"
    render 'new'
  end
end
  def profile
  end
  def delete
    session.delete(:user_id)
    redirect_to"/login/new"
  end
end
