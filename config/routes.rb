Rails.application.routes.draw do
  
  get 'users/new'

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
  #######################
  
end
