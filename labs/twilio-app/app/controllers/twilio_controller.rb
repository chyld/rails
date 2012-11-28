class TwilioController < ApplicationController
  def new
  end
  def create
    from_phone = "+19177461483"
    to_phone = params[:phone]
    txt = params[:textmessage]

    client = Twilio::REST::Client.new(TW_SID, TW_TOK)
    @message = client.account.sms.messages.create({:from => from_phone, :to => to_phone, :body => txt})
    redirect_to twilio_path
  end
end
