class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :league_connections
  has_many :leagues, through: :league_connections

  def index
    if params[:query].present?
      sql_query = " \
        users.first_name @@ :query \
        OR users.first_name @@ :query \
        OR politicians.first_name @@ :query \
        OR politicians.party @@ :query \
        OR politicians.last_name @@ :query \
        OR user.email @@ :query \
        OR political_parties.name @@ :query \
        OR leagues.name @@ :query \
      "
      @users = User.joins(:politician).joins(:league).joins(:political_party).where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.all
    end
  end
end
