# require 'news-api'
# # require 'openssl'
# # OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# newsapi = News.new("")

# p newsapi
# all_articles = newsapi.get_everything(q: 'Theresa May')

# p all_articles

#######################################################################

require 'open-uri'
require 'json'

url = 'https://newsapi.org/v2/everything?'\
      'q=Apple&'\
      'from=2018-09-03&'\
      'sortBy=popularity&'\
      'apiKey='

req = open(url)

response_body = JSON.parse(req.read)

p response_body["totalResults"]

############################################################################


# require 'news-api'
# require 'open-uri'
# require 'openssl'
# OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

# # require 'uri'
# # require 'net/http'
# # require 'net/https'
# # require 'json'


# url = 'https://newsapi.org/v2/everything?'\
#       'q=Theresa May&'\
#       'from=2018-09-03&'\
#       # 'sortBy=popularity&'\
#       'apiKey='

# # uri = URI.parse(url)
# # https = Net::HTTP.new(uri.host, uri.port)
# # https.use_ssl = true
# # req = Net::HTTP::Get.new(uri.request_uri)
# # result = https.request(req)

# # puts result.code

# req = open(url)

# response_body = req.read

# puts response_body

# require "net/http"

# # url = "https://newsapi.org/v2/everything?q=TheresaMay&from=2018-09-03&apiKey="

# url = "https://newsapi.org/v2/everything?q=bitcoin"

# uri = URI.parse(url)
# args = {include_entities: 0, include_rts: 0, screen_name: 'johndoe', count: 2, trim_user: 1}
# uri.query = URI.encode_www_form(args)
# http = Net::HTTP.new(uri.host, uri.port)
# http['x-api-key'] = ''
# http.use_ssl = true

# request = Net::HTTP::Get.new(uri.request_uri)

# response = http.request(request)
# puts response.body
