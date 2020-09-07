Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :posts
      resources :comments
      resources :hashtags
      resources :post_hashtags
      resources :follows
    end
  end
end
