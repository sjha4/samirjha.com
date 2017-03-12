Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
  get '/music' => 'application#music'
  get '/home' => 'application#home'
  get 'message/new' => 'comments#new'
  post 'application/new_comment' => 'application#new_comment'
  resources :comments
  resources :application
end
