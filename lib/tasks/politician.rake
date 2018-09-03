namespace :politician do
  desc "Get all the politician mentions"
  task get_scores: :environment do
    ScoreNewsJob.new.perform
  end
end
# rake politician:get_scores
