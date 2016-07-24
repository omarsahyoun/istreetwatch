

module HomeHelper

  def getting_tweets
    topics = ["PostRefRacism"]
    @tweets = []

    $twitter.search(topics.join(","), result_type: "recent").take(15).collect do |tweet|
      @tweet = {  username: tweet.user.name,
                  screen_name: tweet.user.screen_name,
                  screen_name: tweet.user.screen_name,
                  text: tweet.text,
                  retweets: tweet.retweet_count,
                  favorites: tweet.favorite_count,
                  created_at: tweet.created_at.strftime('%a, %d %b %Y %H:%M:%S'),
                  uri: tweet.uri
                }
      @tweets << @tweet

    end
  end
end
