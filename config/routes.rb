Rails.application.routes.draw do
  root "tweets#index"

  get "/tweets", to: "tweets#index"
  get "/tweets/:hashtag", to: "tweets#get_tweets"
end
