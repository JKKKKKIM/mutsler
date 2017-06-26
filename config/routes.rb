Rails.application.routes.draw do
  get '/' => 'home#index'
  
  
  get '/about_us' => 'home#about_us'

  get '/banner2' => 'home#banner2'

  get '/banner3' => 'home#banner3'

  get '/blog' => 'home#blog'

  get '/blog_details' => 'home#blog_details'

  get '/blog_details_lhs' => 'home#blog_details_lhs'

  get '/blog_details_rhs' => 'home#blog_details_rhs'

  get '/contact' => 'home#contact'

  get '/contact2' => 'home#contact2'

  get '/e404' => 'home#e404'

  get '/header2' => 'home#header2'

  get '/header3' => 'home#header3'

  get '/header4' => 'home#header4'

  get '/header5' => 'home#header5'

  get '/index' => 'home#index'

  get '/index_v2' => 'home#index_v2'

  get '/index_v3' => 'home#index_v3'

  get '/index_v4' => 'home#index_v4'

  get '/index_v5' => 'home#index_v5'

  get '/portfolio' => 'home#portfolio'

  get '/portfolio_details' => 'home#portfolio_details'

  get '/portfolio_details_lhs' => 'home#portfolio_details_lhs'

  get '/portfolio_details_rhs' => 'home#portfolio_details_rhs'

  get '/services' => 'home#services'

  get '/shop' => 'home#shop'

  get '/shop_cart' => 'home#shop_cart'

  get '/shop_checkout' => 'home#shop_checkout'

  get '/shortcodes' => 'home#shortcodes'

  
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
