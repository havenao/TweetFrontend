Rails.application.routes.draw do
  root "tweets#index"

  get "/tweets", to: "tweets#tweets"
end
