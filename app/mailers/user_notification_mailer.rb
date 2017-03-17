class UserNotificationMailer < ActionMailer::Base
  default :from => "Care Process"

  def user_notification_email(user)
    @user = user
    mail(:to => "kisho.official@gmail.com", :subject => 'Available Users in CARE')
  end

  def all_user_notification_email
    @user= User.all
  end
end
