class Notifications < ActionMailer::Base
  default from: "chyld.medford@gmail.com"
  def welcome(user)
    @user = user
    @greeting = "Hi"
    mail to: "chyld.medford@gmail.com", :subject => "welcome to pirate mail...arrrrr"
  end
  def logoff
    @greeting = "Hi"
    mail to: "chyld.medford@gmail.com", :subject => "i noticed you logged off.. this is not creapy"
  end
end
