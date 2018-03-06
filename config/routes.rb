Rails.application.routes.draw do


  match 'auth/:provider/callback', to: 'sessions#create' , :via => [:get, :post]
	match 'auth/failure', to: redirect('/') , :via => [:get, :post]
	match 'signout', to: 'sessions#destroy', as: 'signout' , :via => [:get, :post]

	resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions', passwords: 'users/passwords' }
  root 'events#index'



end