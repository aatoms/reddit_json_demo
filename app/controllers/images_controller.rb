require 'open-uri'
require 'json'
class ImagesController < ApplicationController

  def index
    subreddit = params[:subreddit]
    if subreddit
      json_data = JSON.parse(open("http://www.reddit.com/r/#{subreddit}/.json?limit=100").read)
      images = []
      json_data["data"]["children"].each do |data|
        if data["data"]["domain"] == "i.imgur.com"
          images << data["data"]["url"]
        end
      end
      @image = images.sample
      puts @image

    else
      @image = ''
    end
  end

end