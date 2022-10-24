class TweetsController < ApplicationController
  def index

  end

  def get_tweets
    response = HTTParty.get("https://fierce-lake-18710.herokuapp.com/tweets/#{params[:hashtag]}", format: :plain) 
    @tweets = JSON.parse response, symbolize_names: true
  end

  def choose_tag
    # do I navigate from here?
  end
end
