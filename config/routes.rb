Rails.application.routes.draw do
  patch 'pokemons/capture', to: 'pokemons#capture', as: 'capture'
  patch 'pokemons/damage', to: 'pokemons#damage', as: 'damage'

  root to: 'home#index'
  devise_for :trainers
  resources :trainers
end
