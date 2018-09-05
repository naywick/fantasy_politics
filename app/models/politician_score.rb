class PoliticianScore < ApplicationRecord
  belongs_to :politician
  validates :mentions, presence: true


  def score
    mentions_score * rank_calculator
  end

  private

  def mentions_score
    if mentions <= 100
      return 1
    elsif mentions <= 200
      return 2
    elsif mentions <= 300
      return 3
    elsif mentions <= 400
      return 4
    elsif mentions <= 500
      return 5
    elsif mentions <= 600
      return 6
    elsif mentions <= 700
      return 7
    elsif mentions <= 800
      return 8
    elsif mentions <= 900
      return 9
    elsif mentions <= 1000
      return 10
    else
      return 11
    end
  end

  def rank_score
    if politician.rank == "Party Leader"
      return 1
    elsif politician.rank == "Cabinet"
      return 2
    elsif politician.rank == "Shadow Cabinet"
      return 3
    elsif politician.rank == "Backbencher"
      return 4
    elsif politician.rank == "Other"
      return 5
    end
  end
end
