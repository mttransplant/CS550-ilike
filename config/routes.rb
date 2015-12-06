Rails.application.routes.draw do

  root                 'static_pages#home'
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'
  post    'like_event' => 'events#like_event'
  post    'remove_event_like' => 'events#remove_event_like'
  
  get '/view_event', to: 'events#index'
  get '/view_event/:id', to: 'events#show'
  
  get '/events', to: 'events#index'
  get '/events/:id', to: 'events#show', as: 'event'
  
  resources :users 

  resources :venues
  
end
