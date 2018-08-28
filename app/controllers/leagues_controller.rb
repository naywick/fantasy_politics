class LeaguesController < ApplicationController
def create
   @league = current_user.leagues.build(league_params)

   if @league.save
     LeagueMailer.creation_confirmation(@league).deliver_now
     redirect_to league_path(@league)
   else
     render :new
   end
 end
end
