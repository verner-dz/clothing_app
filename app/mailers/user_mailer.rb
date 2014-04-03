class UserMailer < ActionMailer::Base
  default from: "commonfibersnyc@gmail.com"

  def welcome_email(user, product)
    @user = user
    @product = product
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
