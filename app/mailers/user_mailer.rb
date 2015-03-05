class UserMailer < ActionMailer::Base
  default from: "notifications@example.com"

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/'
    mail(to: @user.email, subject: 'Welcome to Thunder!')
  end

  def user_match_email(user, friend)
    @user = user
    @friend = friend
    mail(to: @user.email, subject: "You've been matched!")
  end

  def friend_match_email(user, friend)
    @user = user
    @friend = friend
    mail(to: @friend.email, subject: "You've been matched")
  end
end
