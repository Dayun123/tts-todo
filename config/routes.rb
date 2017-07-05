Rails.application.routes.draw do

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', as: :signout
  get '/signin' => 'sessions#new', as: :signin

  resources :user_tasks

  root 'user_tasks#index'

end
