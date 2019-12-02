require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :announcements
    resources :notifications
    resources :services

    root to: "users#index"
  end
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  get '/portfolio', to: 'home#portfolio'
  get '/contact', to: 'home#contact'
  get '/about', to: 'home#about'
  get '/services', to: 'home#services'
  get '/service_detail', to: 'home#service_detail'
  get '/website_development', to: 'home#website_development'
  get '/graphic_design', to: 'home#graphic_design'
  get '/digital_marketing', to: 'home#digital_marketing'
  get '/seo_content_writing', to: 'home#seo_content_writing'
  get '/app_development', to: 'home#app_development'
  get '/blog', to: 'home#blog'
  
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
