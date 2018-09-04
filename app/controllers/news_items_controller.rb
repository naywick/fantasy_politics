require 'json'
require 'open-uri'

class NewsItemsController < ApplicationController

  def index
    @news_items = policy_scope(PoliticalParty)
  end

 # def get_news_bbc
 #  apiKey= a504309863774f46a04e56b35653d6e5
 #  url = 'https://newsapi.org/v2/everything?sources=bbc-sport&#{apiKey}'
 #  user_serialized = open(url).read
 #  user = JSON.parse(user_serialized)

 #  puts "#{articles[:description]}"
 #  end

 #  def get_news_twitter
 #    url = 'https://api.twitter.com/1.1/search/tweets.json?q='

 #     authorization: OAuth,
 #     oauth_consumer_key = "consumer-key-for-app",
 #     oauth_nonce = "generated-nonce",
 #     oauth_signature = "generated-signature",
 #     oauth_signature_method = "HMAC-SHA1",
 #     oauth_timestamp = "generated-timestamp",
 #     oauth_token = "access-token-for-authed-user",
 #     oauth_version = "1.0"
 #  end

end
