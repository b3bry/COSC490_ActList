Rails.application.routes.draw do
  root 'lists#dashboard'

  match '/lists/dashboard', :to => 'lists#dashboard', :via => [:get, :post]
  match '/lists/new', :to => 'lists#new', :via => [:get, :post]
  match '/lists/view/:list_id', :to => 'lists#view', :via => [:get, :post], :as => 'lists_view'

  match '/items/new/:list_id', :to => 'items#new', :via => [:get, :post], :as => 'items_new'

  match '/items/up/:id', :to => 'items#up', :via => [:get,:post], :as => 'items_up'
  match '/items/down/:id', :to => 'items#down', :via => [:get,:post], :as => 'items_down'
  match '/items/top/:id', :to => 'items#top', :via => [:get,:post], :as => 'items_top'
  match '/items/bottom/:id', :to => 'items#bottom', :via => [:get,:post], :as => 'items_bottom'
  resources :lists
  resources :items

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
