Rails.application.routes.draw do
  root 'events#index'

  devise_for :users

  resources :users
  resources :events
  resources :event_attendings
end
