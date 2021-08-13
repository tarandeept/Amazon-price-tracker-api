Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :users
      resources :subscriptions, only: [:create, :destroy]
    end
  end

  get '*path', to: 'pages#index', via: :all
end
