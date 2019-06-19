Rails.application.routes.draw do
  resources :events
  resources :responses
  resources :users
  # resources :login, only: [:new,:create]

  get '/login/new', to: 'login#new'
  post '/login/new', to: 'login#create'
  delete '/logout', to:'login#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
