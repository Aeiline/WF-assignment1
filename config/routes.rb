Rails.application.routes.draw do
  
  root              'static_pages#home'
  
  get 'help'           => 'static_pages#help'
  get 'about'          => 'static_pages#about'
  get 'contact'        => 'static_pages#contact'
  get 'access_denied'  => 'static_pages#access_denied'
  
  get 'signup'   => 'users#new'
  
  get 'signin'   => 'sessions#new'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
end
