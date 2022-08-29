Rails.application.routes.draw do
  root "event#index"
  
  devise_for :users
end
