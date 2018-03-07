Rails.application.routes.draw do
  resources :events
  devise_for :users, :controllers => { :registrations => 'users/registrations', :omniauth_callbacks=> "users/omniauth_callbacks" , :confirmations => "users/confirmations"}
  root 'events#index'
end