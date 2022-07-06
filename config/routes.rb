Rails.application.routes.draw do
  get "landing/index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  authenticated :user, lambda { |u| u.admin? } do
    namespace :admin do
      if defined?(Sidekiq)
        require "sidekiq/web"
        mount Sidekiq::Web => "/sidekiq"
      end
    end
  end

  authenticated :user do
    root to: "home#index", as: :user_root
    # Alternate route to use if logged in users should still see public root
    # get "/dashboard", to: "dashboard#show", as: :user_root
  end
  # Defines the public root path route ("/")
  root "landing#index"
end
