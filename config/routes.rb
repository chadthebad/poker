Poker::Application.routes.draw do

  resources :players
  resources :tournaments
  
  resources :leagues

  get "home/index"

  root :to => 'home#index'
end
