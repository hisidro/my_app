class UserMailer < ActionMailer::Base
  default from: "webcpartest@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Successfully Registered to MyApp!")
  end

  def email_attachment(user, file_path)
  	@user = user
  	myFile = File.read(file_path)
  	encoded_file= File.read(file_path, :mode => 'rb') #.encode('utf-8')
	#attachments[File.basename(myFile)] = File.read(file_path, :mode => 'rb')
	attachments[File.basename(myFile)] = encoded_file
	mail(:to => "#{user.name} <#{user.email}>", :subject => "[MyApp] File delivery")
  end
end
