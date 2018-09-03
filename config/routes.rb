Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :political_parties do
    resources :politician_links, only: [:new, :create, :destroy]
  end
  resources :users, only: [:show, :edit, :update] do
    resources :league_connections, only: :index
  end

  resources :politicians_scores, only: [:index]

  resources :politicians, only: [ :index, :show ]
  # resources :politician_links, only: [:new, :create]
  resources :leagues do
    resources :league_connections, only: [:new, :create, :destroy ]
  end

  get '/search_results', to: 'pages#search_results'

  require "sidekiq/web"
    authenticate :user, lambda { |u| u.admin } do
      mount Sidekiq::Web => '/sidekiq'
    end

end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
