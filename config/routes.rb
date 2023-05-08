Rails.application.routes.draw do
  get 'gossip/show'
  get 'user/show'
  namespace :static_pages do
    get 'pages/user_page'
  end
  get 'user/:user_name', to: 'user#show'
  get 'static_pages/home'
  get '/static_pages/contact'#, to: 'controller#method'
  get '/static_pages/team'#, to: 'controller#team'
  get '/gossip/:gossip_title', to: 'gossip#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
