Rails.application.routes.draw do
  
  resources :pictures

  resources :albums
  
  

  devise_for :users
  root "profiles#home"
  
  
  get 'image_new', to: 'images#new'
  get 'images/view_images', :to=>'images#view_images'
  get 'profiles/home', :to=>'profiles#home'
  get 'profiles/user_list', :to=>'profiles#user_list'
  get 'friendships/notifications', :to=>'friendships#notifications'
  get 'friendships/accept_friendship', :to=>'friendships#accept_friendship'
  get 'friendships/request_friendship', :to=>'friendships#request_friendship'
  delete 'friendships/destroy_friendship', :to=>'friendships#destroy_friendship'
  

  resources :comments  
  resources :friendships
  resources :profiles
  resources :images
  resources :posts
  
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
