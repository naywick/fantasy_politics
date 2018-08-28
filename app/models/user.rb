class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true

  after_create :send_welcome_email

  include AlgoliaSearch

  algoliasearch do
    attribute :first_name, :last_name, :email
  end

  # def index
  #     @users = User.all
  # end
private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
