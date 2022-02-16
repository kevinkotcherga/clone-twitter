Rails.application.routes.draw do
  resources :tweet_posts
  namespace :api do
    resources :tweets
    resources :tweet_posts

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  end
end
