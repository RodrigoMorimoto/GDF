Rails.application.routes.draw do
  
  root 'welcome#index'
  resources :systems
  resources :users
  get 'loggin' => 'loggins#new'
  post 'loggin' => 'loggins#create'
  get 'logout' => 'users#logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
