require 'open-uri'
require 'json'

class ScoreNewsJob < ApplicationJob
  # queue_as :default

  def perform
    politicians = Politician.all
    politicians.each do |politician|

      url = "https://newsapi.org/v2/everything?"\
        "q=#{politician.name}&"\
        "from=#{Date.today}&"\
        "sortBy=popularity&"\
        "apiKey=#{ENV["NEWS_API_KEY"]}"
      req = open(url)
      response_body = JSON.parse(req.read)
      PoliticianScore.create(mentions: response_body["totalResults"], politician: politician)
    end
  end
end

# rake politician:get_scores to run - deploy in hiroku
# heroku addons:create rediscloud
