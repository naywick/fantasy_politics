Rails.application.routes.draw do
  root to: 'pages#home' # OK
  devise_for :users, controllers: { registrations: "registrations" }

  resources :political_parties, only: [ :index, :new, :create, :show ] do
    resources :politician_links, only: [:new, :create, :destroy]
  end

  resources :users, only: :show

  resources :politician_scores, only: [:index]

  resources :leagues, only: [ :new, :create, :index, :show ] do
    resources :league_connections, only: :create
  end

  get '/my_leagues', to: 'leagues#my_leagues'
  get '/politician_scores', to: 'politician_scores#index'

  require "sidekiq/web"
    authenticate :user, lambda { |u| u.admin } do
      mount Sidekiq::Web => '/sidekiq'
    end

end

  # get '/news_items', to: 'news_items#index'
  # get '/search_results', to: 'pages#search_results'
   # resources :league_connections, only: :index
  # resources :politicians, only: [ :index, :show ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
