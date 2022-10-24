class TweetsController < ApplicationController
  def index
  end

  def get_tweets
    hashtag = params[:hashtag]
    
    # Todo: validate that hashtag has value before executing
    response = HTTParty.get(Rails.application.credentials.dig(:tweet_api, :route) + "/#{hashtag}", format: :plain) 
    @tweets = JSON.parse response, symbolize_names: true
  end
end
