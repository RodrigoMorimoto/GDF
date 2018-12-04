Rails.application.routes.draw do
  get 'loggin' => 'loggins#new'
  post 'loggin' => 'loggins#create'

  root 'welcome#index'
  
  resources :systems
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
