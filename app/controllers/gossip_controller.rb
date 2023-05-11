class GossipController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:gossip_title]
    puts "$" * 60
  end
  def edit
    
  end
  def update
    author = User.find_by(pseudo: params["user"])
    @gossip = Gossip.find(params[:id])
    author_for_link = @gossip.user
    if @gossip.update(user: author,title:params["title"],content:params["content"] )
      redirect_to"/static_pages/home"
    else
      #render :edit
      redirect_to "/gossip/#{@gossip.id}/edit"
    end
  end
  def delete
    @gossip = Gossip.find(params[:gossip_title])
    @gossip.destroy
    redirect_to"/static_pages/home"
  end
  
end
