Rails.application.routes.draw do
  resources :search_suggestions
  get 'notifications/index', as: 'notifications'

  resources :releases
  resources :interests , :only=>[:index, :create, :destroy]
  resources :artists
  # resource :user do
  #   resources :interests
  #   resources :notifications
  # end
  devise_for :users
  get 'users' => 'users#index'
  get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id' => 'users#show', as: 'user'
  resources :movies
  get 'users/:user_id/notifications', :controller => 'notifications', :action => 'index'
  get 'users/:user_id/notifications.:format', :controller => 'notifications', :action => 'index'

  # , path_names: {
  #                sign_up:'aaja!',
  #                      sign_in: 'login',
  #                      sign_out: 'logout',
  #                      password: 'reset'
  #                  }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'movies#index'

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
