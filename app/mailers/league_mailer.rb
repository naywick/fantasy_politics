class LeagueMailer < ApplicationMailer

  def creation_confirmation(league)
    @league = league

    mail(
      to:       @league.user.email,
      subject:  "League #{@league.name} created!"
    )
  end
end
