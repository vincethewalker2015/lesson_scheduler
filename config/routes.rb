Rails.application.routes.draw do
  
  resources :clients
  resources :trainers
  root "pages#home"
  resources :lessons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
