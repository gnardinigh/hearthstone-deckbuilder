Rails.application.routes.draw do
  resources :deck_cards
  resources :user_decks
  resources :cards
  resources :decks
  resources :users
  resources :sessions


  post 'decks/index', to:'decks#index', as:'choose_hero'

  post '/decks/remove_from_deck', to: 'decks#remove_from_deck', as: 'remove_deck'

  delete 'sessions/:id', :to =>'sessions#destroy', as: 'logout'

  get 'sessions/new', :to => 'sessions#new', as: 'login'

  post 'sessions/new', :to => 'sessions#create', as: 'profile'

  get 'users/new', :to => 'users#new', as: 'create_user'


  # get '/profile', to: 'users/show', as: 'profile'
  # get '/login', to: 'sessions#new', as: 'login'
  # post 'login', to: 'sessions#new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html







end
