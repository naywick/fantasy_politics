namespace :politician do
  desc "Get politicians scores"
  task get_scores: :environment do
    require 'open-uri'
    require 'json'

    politicians = Politician.all
    politicians.each do |politician|
      url = "https://newsapi.org/v2/everything?"\
            "q=#{politician.name}&"\
            "from=#{Date.today}&"\
            "sortBy=popularity&"\
            "apiKey=#{ENV['NEWS_API_KEY']}"

      req = open(url)
      response_body = JSON.parse(req.read)
      PoliticianScore.create!(mentions: response_body["totalResults"], politician: politician)
    end
  end

end

