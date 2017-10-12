Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/show'
  # get 'items/add'
  # get 'items/edit'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/edit'

  root 'lists#index'
  resources :lists
  resources :items
  # resources :lists do
  #   resources :items
  # end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
