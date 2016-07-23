module TwittercontrollerHelper

def justin_bieber
  $twitter.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
    "#{tweet.user.screen_name}: #{tweet.text}"
  end
end

end
