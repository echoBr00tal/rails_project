Rails.application.routes.draw do
  
  root 'general#home'
  
  ##### GENERAL PAGES #####
  get  '/help', to: 'general#help'
  #help_path -> '/help'
  #help_url  -> 'http://www.example.com/help'
  get  '/about', to: 'general#about'
  get  '/contact', to: 'general#contact'
  #########################
  
  ##### USERS PAGES #####
  get  '/signup', to: 'users#new'
  resources :users
  #######################

  ##### LOGIN #####
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  #################
  
  ##### ACCOUNT ACTIVATION #####
  resources :account_activations, only: [:edit]
  ##############################
  
end
