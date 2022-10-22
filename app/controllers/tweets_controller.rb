class TweetsController < ApplicationController
  def index

  end

  def tweets
    response = HTTParty.get("http://localhost:3000/tweets", format: :plain) 
    @tweets = JSON.parse response, symbolize_names: true
  end
end
