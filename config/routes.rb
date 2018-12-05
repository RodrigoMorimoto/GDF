Rails.application.routes.draw do
      root 'welcome#index'
      #resources :selecao
      get 'selecao' => 'selecao#index'
      post 'selecao' => 'selecao#index'
      get 'selecao/criar' => 'selecao#create'
      post 'selecao/criar' => 'selecao#create'
      get 'selecao/novaficha' => 'selecao#new'
      post 'selecao/novaficha' => 'selecao#new'
      resources :users
      get 'loggin' => 'loggins#new'
      post 'loggin' => 'loggins#create'
      get 'logout' => 'users#logout'
      get 'fichas' => 'sheets#index'
      post 'fichas' => 'sheets#index'
      get 'fichas/apagar' => 'sheets#destroy'
      post 'fichas/apagar' => 'sheets#destroy'
      get 'fichas/editar' => 'sheets#edit'
      post 'fichas/editar' => 'sheets#edit'
      get 'fichas/update' => 'sheets#update'
      post 'fichas/upadte' => 'sheets#update'
      # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
