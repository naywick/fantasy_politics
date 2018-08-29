class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  after_create :send_welcome_email
  
  has_many :league_connections
  has_many :leagues, through: :league_connections
  has_many :political_parties

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

  include AlgoliaSearch

  algoliasearch do
    # attribute :first_name, :last_name, :email, :username

  end

private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
