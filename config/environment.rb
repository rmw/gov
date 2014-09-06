# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


#Twitter configuration

twitter_config = YAML.load_file('config/twitter.yml')

twitter_config.each do |key, value|
	ENV[key]=value
end

RESTCLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['TWITTER_KEY']
  config.consumer_secret = ENV['TWITTER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end


STREAMINGCLIENT = Twitter::Streaming::Client.new do |config|
  config.consumer_key = ENV['TWITTER_KEY']
  config.consumer_secret = ENV['TWITTER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end


article_config = YAML.load_file('config/nyt.yml')

<<<<<<< HEAD

article_config.each do |key, value|
	ENV[key] = value
end
=======
article_config.each do |key, value|
 	ENV[key] = value
end


article_config = YAML.load_file('config/sunlight.yml')

article_config.each do |key, value|
  ENV[key] = value
end

# Sunlight::Base.api_key = ENV['SUNLIGHT_KEY']
>>>>>>> 091ec46ffd04df7f96b5853e30d1a467d9b050c5

#Base.api_key = ENV['ARTICLE_SEARCH']

