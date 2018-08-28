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
# def create
#     @league = League.new(league_params)
# end
  def index
    @leagues = League.all
  end
  
  def update
    @league = League.find(params[:id])
    if @league.update(league_params)
      redirect_to league(@league)
    else
      render :edit
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy
  end

private

  def league_params
    params.require(:league).permit(:name)
  end
end
