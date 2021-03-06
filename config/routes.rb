Rails.application.routes.draw do



  # get 'shipments/new', to: 'shipments#new', as: 'new_shipment'
  # post 'shipments', to: 'shipments#create'

  # get 'shipments', to: 'shipments#index', as: 'show_all_shipments'
  # get 'shipments/:id', to: 'shipments#show', as: 'show_shipment'

  # get 'shipments/:id/edit', to: 'shipments#edit', as: 'edit_shipment'
  # patch 'shipments/:id', to: 'shipments#update'
  # put 'shipments/:id', to: 'shipments#update'


  resources :shipments



  root 'sessions#new'
  # resources :users


  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'log_out'
  delete '/logout', to: 'sessions#destroy'



  get '/users/new', to: 'users#new', as: 'new_users'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'



  # do not need delete for a session because it thinks you are doing something to a database
  #delete '/logout', to: 'sessions#destroy'




  get 'billing', to: 'shipments#billing', as: 'billing'

  get 'archive', to: 'shipments#archive', as: 'archive'





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
end
