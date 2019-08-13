Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update]
  root to: 'pages#home'
  get "dashboard", to: "dashboards#index", as: "dashboard"

  resources :concert_events, only: [:index, :show], as: "concerts", :path => "/concerts"
  resources :orders, only: [:show, :create]

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :orders, only: [ :create ]
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
