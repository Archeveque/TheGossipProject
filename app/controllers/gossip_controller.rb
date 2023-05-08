class GossipController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:gossip_title]
    puts "$" * 60
  end
end
