Rails.application.routes.draw do

  authenticated :user do
      root to: 'lists#index', as: :authenticated_root
  end

  root 'welcome#Index'
  get 'welcome/Index'

  devise_for :users


  # root 'lists#index'
  resources :lists
  resources :items


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
