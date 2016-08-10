Rails.application.routes.draw do
  root 'general#home'
  
  ##### GENERAL PAGES #####
  get 'general/home'
  get 'general/help'
  get 'general/about'
  get 'general/contact'
  #########################
  
end
