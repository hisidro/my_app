class UserMailer < ActionMailer::Base
  default from: "webcpartest@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Successfully Registered to MyApp!")
  end
end
