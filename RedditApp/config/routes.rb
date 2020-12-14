# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                      user GET    /users/:id(.:format)                                                                     users#show
#                      subs GET    /subs(.:format)                                                                          subs#index
#                           POST   /subs(.:format)                                                                          subs#create
#                   new_sub GET    /subs/new(.:format)                                                                      subs#new
#                  edit_sub GET    /subs/:id/edit(.:format)                                                                 subs#edit
#                       sub GET    /subs/:id(.:format)                                                                      subs#show
#                           PATCH  /subs/:id(.:format)                                                                      subs#update
#                           PUT    /subs/:id(.:format)                                                                      subs#update
#               new_session GET    /session/new(.:format)                                                                   sessions#new
#                   session DELETE /session(.:format)                                                                       sessions#destroy
#                           POST   /session(.:format)                                                                       sessions#create
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :index]

  resources :subs, only: [:show, :index, :new, :edit, :create, :update]

  resource :session, only: [:new, :create, :destroy]
end
