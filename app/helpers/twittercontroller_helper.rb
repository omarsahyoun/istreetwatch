module TwittercontrollerHelper

def getting_tweets
  topics = ["PostRefRacism"]

  $twitter.search(topics.join(","), result_type: "recent").take(1).collect do |tweet|

    "#{tweet.user.name} #{tweet.user.screen_name}: #{tweet.text}....... #{tweet.retweet_count} #{tweet.favorite_count} #{tweet.created_at}"

  end
end


end
