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
            "apiKey=a504309863774f46a04e56b35653d6e5"

      req = open(url)
      response_body = JSON.parse(req.read)
      # PoliticianScore.create!()
    end
  end

end
