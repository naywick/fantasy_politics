require 'news-api'

newsapi = News.new("a504309863774f46a04e56b35653d6e5")

# p newsapi
all_articles = newsapi.get_everything(q: 'apple')
p all_articles[:totalResults]
p all_articles
