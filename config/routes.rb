Rails.application.routes.draw do

  get 'home/index'
  #localhost:3000/home/index
  get '/elise' => 'home#elise'
  #localhost:3000/elise
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
