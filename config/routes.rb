Rails.application.routes.draw do

  devise_for :users


  resources :pickups
  resources :users do
    collection do
      get 'comment'
    end
  end


  # get 'about' => "home#about"


  get 'index' => "home#index"

  # get 'pickups' =>"pickups#index"
  get 'pickups' =>"pickups#index", as: 'pickups_search'

  get '/pickups/pickup/:id', to: 'pickups#pickup', as: 'pickitup'

  # get 'Login' =>'logini#login'

  # get 'signup' => 'users#new'

  #Route for comment action
  get 'comment' => 'users#comment'
  get 'users/comment' => "users#comment", as: 'users_search'

  get 'dashboard' => 'users#dashboard'

  get 'nearbies' => 'nearbies#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
