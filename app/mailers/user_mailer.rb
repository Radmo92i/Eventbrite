class UserMailer < ApplicationMailer
    default from: 'no-reply@evenbrite.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'http://evenbrite.fr/login' 
    mail(to: @user.email, subject: 'Hello World !') 
  end
end
