module HomeHelper

  def getting_tweets
    topics = ["PostRefRacism"]
    @tweets = []

    $twitter.search(topics.join(","), result_type: "recent").take(10).collect do |tweet|
      @tweet = {  username: tweet.user.name,
                  screen_name: tweet.user.screen_name,
                  screen_name: tweet.user.screen_name,
                  text: tweet.text,
                  retweets: tweet.retweet_count,
                  favorites: tweet.favorite_count,
                  created_at: tweet.created_at
                }
      @tweets << @tweet
      # "#{tweet.user.name} #{tweet.user.screen_name}: #{tweet.text}....... #{tweet.retweet_count} #{tweet.favorite_count} #{tweet.created_at}"

    end
  end
end
