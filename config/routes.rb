Rails.application.routes.draw do

  # Logged in
  constraints lambda { |req| !req.session[:user_id].blank? } do
    root :to => "users#landing", :as => "dashboard"
  end
  # Not logged in
  root                 'static_pages#home'
  
  get     'about'   => 'static_pages#about'
  get     'contact' => 'static_pages#contact'
  get     'signup'  => 'users#new'
  get     'login'   => 'sessions#new'
  post    'login'   => 'sessions#create'
  delete  'logout'  => 'sessions#destroy'
  
  get '/view_event', to: 'events#index'
  get '/view_event/:id', to: 'events#show'    #, as: 'event'
  
  get '/events', to: 'events#index'
  get '/events/:id', to: 'events#show', as: 'event'
  
  resources :users
  resources :venues
  
end
