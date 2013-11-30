Consoledeals::Application.routes.draw do

  resources :orders


  resources :line_items


  resources :carts


  resources :reservations


  devise_for :users do
    get 'logout' => 'devise/sessions#destroy'
  end

  match '/admin' => 'admin/index#index'

  # AdminProducts
  match '/admin/products/new/' => 'admin/products#new'
  match '/admin/products/index/' => 'admin/products#index'
  match '/admin/products/create/' => 'admin/products#create'
  match '/admin/products/:id/edit/' => 'admin/products#edit'
  match 'admin/products/inactive/' => 'admin/products#inactive'

  #adverts
  match '/create-advert/' => 'adverts#create'
  match '/create-new-advert/' => 'adverts#new'
  match '/view-adverts/' => 'adverts#index'
  match '/adverts/:id/delete/' => 'adverts#destroy'

  #products

  match '/products/index/' => 'products#index'
  match '/view-product-details/:id/' => 'products#show'

  #consoles
  match '/admin/consoles/new/' => 'admin/consoles#new'
  match '/admin/consoles/index/' => 'admin/consoles#index'
  match '/admin/consoles/create/' => 'admin/consoles#create'
  match '/admin/consoles/:id/edit/' => 'admin/consoles#edit'
  match '/admin/consoles/:id/update/' => 'admin/consoles#update'
  match '/admin/consoles/:id/delete/' => 'admin/consoles#destroy'

  #branches
  match '/admin/branches/new/' => 'admin/branches#new'
  match '/admin/branches/index/' => 'admin/branches#index'
  match '/admin/branches/create/' => 'admin/branches#create'
  match '/admin/branches/:id/edit/' => 'admin/branches#edit'
  match '/admin/branches/:id/update/' => 'admin/branches#update'
  match '/admin/branches/inactive/' => 'admin/branches#inactive'

  #suppliers
  match '/admin/suppliers/new/' => 'admin/suppliers#new'
  match '/admin/suppliers/index/' => 'admin/suppliers#index'
  match '/admin/suppliers/create/' => 'admin/suppliers#create'
  match '/admin/suppliers/:id/edit/' => 'admin/suppliers#edit'
  match '/admin/suppliers/:id/update/' => 'admin/suppliers#update'
  match '/admin/suppliers/:id/delete/' => 'admin/suppliers#destroy'


  #gift_search
  match '/showing-your-gift-search-results/' => 'giftsearches#results'
  match '/compare-products/compare/' => 'giftsearches#compare'
  match '/start_your_search_/' => 'giftsearches#new'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'giftsearches#results'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))''
end
