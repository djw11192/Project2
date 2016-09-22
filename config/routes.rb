Rails.application.routes.draw do

  get 'orders/index'

  get '/subscribe/step1' => 'examplequeries#step1'
  get '/subscribe/step2' => 'examplequeries#step2'
  get '/subscribe/step3' => 'examplequeries#step3'
  get '/subscribe' => 'examplequeries#create'

  root 'sessions#new'
  get '/join' => 'members#join', as: 'join'
  get '/join/add' => 'members#confirm', as: 'confirm'
  # get '/join/confirm' => 'members#confirm', as: 'confirm'

  resources :orders

  get '/account/:id/add_extras' => 'orders#show_extra'
  post '/account/:id/add_extras/:product' => 'orders#add_extra', as: 'add_extra'
  get '/account/:id/box' => 'order_products#show_box', as: 'show_box'


  resources :members
   get '/account/:id' => 'members#account', as: 'account'
   get '/account/:id/email' => 'members#change_email', as: 'change_email'
   get '/account/:id/plan' => 'members#change_plan', as: 'change_plan'
   get '/account/:id/frequency' => 'members#change_frequency', as: 'change_frequency'
   get '/account/:id/address' => 'members#change_address', as: 'change_address'
   patch '/account/:id' => 'members#update', as: 'box'



   get '/logout' => 'sessions#destroy', as: 'logout'
   resources :sessions, only: [:new, :create]


  resources :members


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
