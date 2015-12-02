Rails.application.routes.draw do

  root                 'static_pages#home'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'
  
  get '/view_event', to: 'view_event#index'
  get '/view_event/:id', to: 'view_event#show', as: 'event'
  
  resources :users
  resources :venues
  
end
