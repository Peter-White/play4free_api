Rails.application.routes.draw do

  resources :users
  resources :games

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # Game Routes
  root 'home#index'

  post '/login', to: 'auth#login'
  post '/register', to: 'auth#register'
  post '/logout', to: 'auth#logout'

  # Get game database
  get '/api/games', to: 'games#index'

  # :id will identify a specific game
  get '/api/games/:id', to: 'games#show'

  # Create a game.
  post '/api/games', to: 'games#create'

  # Update a game
  patch '/api/games/:id', to: 'games#update'

  # Delete a game
  delete '/api/games/:id', to: 'games#delete'

  # User Routes
  get '/api/users', to: 'users#index'

  # :id will identify a specific user
  get '/api/users/:id', to: 'users#show'

  # Create a user
  post '/api/users', to: 'users#create'

  # Update a user
  patch '/api/users/:id', to: 'users#update'

  # delete a user
  delete '/api/users/:id', to: 'users#delete'
end
