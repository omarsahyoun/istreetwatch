$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['TWIT_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWIT_ACCESS_SECRET']
end
