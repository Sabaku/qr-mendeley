QrMendeley::Application.routes.draw do

  resources :posters,
            :except => :destroy     # Need to implement this for admins

  match "about" => 'home#about'

  root :to => 'home#index'

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
#== Route Map
# Generated on 11 Jun 2011 23:06
#
# INFO: No custom settings file at /mnt/Dropbox/Projects/Sabaku/qr-mendeley.git/config/settings/custom.yml so using defaults only
#     posters GET    /posters(.:format)                    {:action=>"index", :controller=>"posters"}
#             POST   /posters(.:format)                    {:action=>"create", :controller=>"posters"}
#  new_poster GET    /posters/new(.:format)                {:action=>"new", :controller=>"posters"}
# edit_poster GET    /posters/:id/edit(.:format)           {:action=>"edit", :controller=>"posters"}
#      poster GET    /posters/:id(.:format)                {:action=>"show", :controller=>"posters"}
#             PUT    /posters/:id(.:format)                {:action=>"update", :controller=>"posters"}
#             DELETE /posters/:id(.:format)                {:action=>"destroy", :controller=>"posters"}
#       about        /about(.:format)                      {:action=>"about", :controller=>"home"}
#        root        /(.:format)                           {:controller=>"home", :action=>"index"}
#      jammit        /assets/:package.:extension(.:format) {:extension=>/.+/, :controller=>"jammit", :action=>"package"}
