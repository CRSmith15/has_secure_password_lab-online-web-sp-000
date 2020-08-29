Rails.application.routes.draw do

  get '/', to: 'users#new', as: 'user'
  post '/', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/:user', to: 'sessions#show', as: 'homepage'
  post '/logout', to: 'sessions#destroy',
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
