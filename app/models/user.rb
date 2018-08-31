class User < ApplicationRecord
  # cloudinery photo access
    mount_uploader :photo, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :username, presence: true, uniqueness: true
  after_create :send_welcome_email

  has_many :leagues, through: :league_connections
  has_many :political_parties

  has_many :user_league_connections
  has_many :leagues, through: :user_league_connections


  include AlgoliaSearch

  algoliasearch do
    # attribute :first_name, :last_name, :email, :username

  end

private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
# if no photo uploded will display from stock photos
  def cl_photo
      if photo?
        photo
      else
        'https://alderton-jun.essex.sch.uk/staffs/primary/etchinghill/web/bg-light-681.jpg'
      end
    end
end
