Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users',  to: 'users#new'
  post '/users',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create', as: 'create_session'
  delete '/login', to: 'sessions#destroy'
  get '/', to: 'welcome#show', as: 'welcome'

end
