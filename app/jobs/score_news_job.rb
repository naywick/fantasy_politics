class ScoreNewsJob < ApplicationJob
  queue_as :default

  def perform(*args)

every: ["24h"]
  end
end
