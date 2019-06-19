Rails.application.routes.draw do
  root "events#index"
  resources :events
  resources :responses
  resources :users
  # resources :login, only: [:new,:create]

  get '/login/new', to: 'login#new'
  post '/login/new', to: 'login#create'
  delete '/logout', to:'login#destroy'

  # make a custom routes to RSVP in event show page
  post "/events/:id/create", to: 'responses#create'
  delete "/users/:id/delete", to: 'responses#destroy'








  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
