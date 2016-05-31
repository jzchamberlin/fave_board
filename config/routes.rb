Rails.application.routes.draw do
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # Routes for the List_following resource:
  # CREATE
  get "/list_followings/new", :controller => "list_followings", :action => "new"
  post "/create_list_following", :controller => "list_followings", :action => "create"

  # READ
  get "/list_followings", :controller => "list_followings", :action => "index"
  get "/list_followings/:id", :controller => "list_followings", :action => "show"

  # UPDATE
  get "/list_followings/:id/edit", :controller => "list_followings", :action => "edit"
  post "/update_list_following/:id", :controller => "list_followings", :action => "update"

  # DELETE
  get "/delete_list_following/:id", :controller => "list_followings", :action => "destroy"
  #------------------------------

  # Routes for the User_following resource:
  # CREATE
  get "/user_followings/new", :controller => "user_followings", :action => "new"
  post "/create_user_following", :controller => "user_followings", :action => "create"

  # READ
  get "/user_followings", :controller => "user_followings", :action => "index"
  get "/user_followings/:id", :controller => "user_followings", :action => "show"

  # UPDATE
  get "/user_followings/:id/edit", :controller => "user_followings", :action => "edit"
  post "/update_user_following/:id", :controller => "user_followings", :action => "update"

  # DELETE
  get "/delete_user_following/:id", :controller => "user_followings", :action => "destroy"
  #------------------------------

  # Routes for the Board_following resource:
  # CREATE
  get "/board_followings/new", :controller => "board_followings", :action => "new"
  post "/create_board_following", :controller => "board_followings", :action => "create"

  # READ
  get "/board_followings", :controller => "board_followings", :action => "index"
  get "/board_followings/:id", :controller => "board_followings", :action => "show"

  # UPDATE
  get "/board_followings/:id/edit", :controller => "board_followings", :action => "edit"
  post "/update_board_following/:id", :controller => "board_followings", :action => "update"

  # DELETE
  get "/delete_board_following/:id", :controller => "board_followings", :action => "destroy"
  #------------------------------

  devise_for :users
  root "boards#index"

  # Routes for the Card resource:
  # CREATE
  get "/cards/new", :controller => "cards", :action => "new"
  post "/create_card", :controller => "cards", :action => "create"

  # READ
  get "/cards", :controller => "cards", :action => "index"
  get "/cards/:id", :controller => "cards", :action => "show"

  # UPDATE
  get "/cards/:id/edit", :controller => "cards", :action => "edit"
  post "/update_card/:id", :controller => "cards", :action => "update"

  # DELETE
  get "/delete_card/:id", :controller => "cards", :action => "destroy"
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

  # Routes for the Board resource:
  # CREATE
  get "/boards/new", :controller => "boards", :action => "new"
  post "/create_board", :controller => "boards", :action => "create"

  # READ
  get "/boards", :controller => "boards", :action => "index"
  get "/boards/:id", :controller => "boards", :action => "show"

  # UPDATE
  get "/boards/:id/edit", :controller => "boards", :action => "edit"
  post "/update_board/:id", :controller => "boards", :action => "update"

  # DELETE
  get "/delete_board/:id", :controller => "boards", :action => "destroy"
  #------------------------------

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
