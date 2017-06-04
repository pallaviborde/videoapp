Rails.application.routes.draw do
  get 'user/home'

  #get 'application#hello'
  root 'videos#index'
  #root 'user#home'
  #get '/search', to: 'videos#search'
  post 'videos/search'
  get 'videos/search'
  #resources :users
  get 'user/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  #get 'application'
end
