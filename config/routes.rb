Rails.application.routes.draw do

  
  devise_for :users 
  
  root 'muscle_common#index'
  
  get "/" => 'muscle_common#index'
  
  get 'home' => 'muscle_common#index'

  
  
  #수민 start
  get 'musle_video/list'
  get 'musle_video/detail/:id' => 'musle_video#detail'
  get 'musle_video/reply' => 'musle_video#reply_ok'
  post 'video/like' => 'musle_video#like'
  #수민 end
  
  
  #종경 start
  get 'musle_daily/daily_write' => "musle_daily#daily_write"
  get 'musle_daily/daily_main' => "musle_daily#daily_main"
  #종경 end
  
  #태영 start
  

  get 'user_page' => 'musle_common#user_page'
  get '/list' => "home#list"
  get 'user_page' => 'muscle_common#user_page'

  #태영 end
  #지원 
  get '/musle_food/shop'
  get 'musle_food/food_inf'
  get 'musle_food/vegetable'
  get 'musle_food/fruit'
  get 'musle_food/supplement'
  get 'musle_food/max'
  get 'musle_food/way'
  get 'musle_food/shop_2'
  get 'musle_food/shop_3'
  get 'musle_food/shop_4'
  get 'musle_food/shop_5'
  get 'musle_food/shop_6'
  get 'musle_food/shop_7'
  get 'musle_food/food_inf_2'
  get 'musle_food/vegetable_2'
  get 'musle_food/fruit_2'

  # 지원--end--
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