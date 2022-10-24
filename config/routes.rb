Rails.application.routes.draw do
  root "tweets#index"

  get "/tweets", to: "tweets#index"
  get "/get_tweets", to: "tweets#get_tweets"
end
