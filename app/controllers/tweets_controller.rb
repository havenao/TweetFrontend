class TweetsController < ApplicationController
  def index
  end

  def get_tweets
    hashtag = params[:hashtag]
    
    # Todo: validate that hashtag has value before executing
    response = HTTParty.get("https://fierce-lake-18710.herokuapp.com/tweets/#{hashtag}", format: :plain) 
    @tweets = JSON.parse response, symbolize_names: true
  end
end
