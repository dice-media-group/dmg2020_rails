require 'sidekiq/web'

Rails.application.routes.draw do
  resources :messages
  namespace :admin do
    resources :messages
    resources :users
    resources :announcements
    resources :notifications
    resources :services

    root to: "users#index"
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/portfolio', to: 'home#portfolio'
  get '/contact', to: 'messages#new'
  get '/about', to: 'home#about'
  get '/blog', to: 'home#blog'
  get '/services/website_development'
  get 'services/graphic_design'
  get 'services/digital_marketing'
  get 'services/seo_and_content_marketing'
  get 'services/app_development'

  
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :services, only: [:index]
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
