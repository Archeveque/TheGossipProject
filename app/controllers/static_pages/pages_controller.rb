class StaticPages::PagesController < ApplicationController
  def user_page
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:user_entry]
    puts "$" * 60
  end
end
