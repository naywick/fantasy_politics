class UserMailer < ApplicationMailer
def welcome(user)
  @user = user

  mail(to: @user.email, subject: 'Welcome to Fantasy Politics')
  # This will render a view in `app/views/user_mailer`!
end

end
