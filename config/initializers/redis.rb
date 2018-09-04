$redis = Redis.new

url = ENV["REDISCLOUD_URL"]

if url
  Sidekiq.configure_server do |config|
    config.redis = { url: "redis://#{ENV['REDISCLOUD_URL']}:6379/12" }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: "redis://#{ENV['REDISCLOUD_URL']}:6379/12" }
  end
  $redis = Redis.new(url: "redis://#{ENV['REDISCLOUD_URL']}:6379/12")
end
