Rails.application.routes.draw do
  get 'login/create'
  get 'sessions/create'
  get 'gossips/create'
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
  get '/gossips/new'
  post '/gossips/create', to: 'gossips#create'
  get '/gossip/:gossip_title/edit', to: 'gossip#edit'
  post '/gossip/:gossip_title/update', to: 'gossip#update'
  get '/gossip/:gossip_title/delete', to: 'gossip#delete'
  get '/sessions/new'
  post '/sessions/create', to: 'sessions#create'
  get '/login/new'
  post '/login/create', to: 'login#create'
  get '/login/profile'
  get '/login/delete'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
