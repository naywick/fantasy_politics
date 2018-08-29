class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :username, presence: true, uniqueness: true
  after_create :send_welcome_email

  has_many :league_connections
  has_many :leagues, through: :league_connections
  has_many :political_parties

  include AlgoliaSearch

  algoliasearch do
    # attribute :first_name, :last_name, :email, :username

  end

private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
