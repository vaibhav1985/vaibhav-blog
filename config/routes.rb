VaibhavBlog::Application.routes.draw do
  
 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # authenticated :user do
  #   root :to => 'home#index'
  # end

  devise_for :users, :controllers => {
    registrations: "users/registrations", 
    passwords: "users/passwords", 
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  resources :users
  root :to => "home#index"
  get "home/index"
  
  resources :ajaxes
  resources :csses
  resources :gits
  resources :tritia

  resources :installs

  resources :ubuntus

  resources :xpaths

  resources :uranium_js

  resources :java_struts

  resources :design_sasses

  resources :rubyonrails

  resources :rubies

  resources :database_postgresqls

  resources :database_mysqls

  resources :java_jsps

  resources :global_jqueries

  resources :common_htmls

  resources :java_hibernates

  resources :rails_herokus

  resources :rails_hamls

  resources :gemrubies

  resources :others
#   concern :commentable do
# resources :comments
# end
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
