Rails.application.routes.draw do
  get '/', :to => 'landing#show'
  root 'landing#show'

  # Landing Pages
  get 'about', :to => 'landing#about'
  get 'dispatch', :to => 'landing#dispatch'
  get 'features', :to => 'landing#features'
  get 'gps', :to => 'landing#gps'
  get 'pricing', :to => 'landing#pricing'
  get 'privacy', :to => 'landing#privacy'
  get 'testing', :to => 'landing#testing'
  get 'dashboard', :to => 'landing#dashboard'
  get 'map', :to => 'landing#map'
  get 'routehistory', :to => 'landing#routehistory'


  # User Pages
  resources :users 
  get 'newuser', :to => 'users#new'
  get 'preferences', :to => 'users#edit'
  get 'myaccount', :to => 'users#show'


  # Contact Us Page
  resources :contacts
  get 'contact', :to => 'contacts#new'

  # Login Page
  resources :sessions
  get 'login', to: 'sessions#login'
  get 'logout', to: 'sessions#destroy'


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
