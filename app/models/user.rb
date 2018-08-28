class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def index
    if params[:query].present?
      sql_query = " \
        users.first_name @@ :query \
        OR users.first_name @@ :query \
        OR politicians.first_name @@ :query \
        OR politician.last_name @@ :query \
      "
      @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
    else
      @movies = Movie.all
    end
  end
end
