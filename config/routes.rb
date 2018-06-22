Rails.application.routes.draw do

  resources :nayas
  root 'nayas#index'
end
