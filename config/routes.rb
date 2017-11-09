Rails.application.routes.draw do

  #localhost:3000/home/index
  get '/elise' => 'home#elise'
  #localhost:3000/elise
  resources :users
  resources :posts
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
