Rails.application.routes.draw do
  
  root "pages#home"
  resources :clients
  resources :trainers
  resources :users
  resources :lessons
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
