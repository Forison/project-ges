class NewsLetterMailer < ApplicationMailer
  def welcome
    mail(
      to:      params[:user_emails],
      subject: 'Newletter',
      date:    Time.zone.now,
      cc:      params[:guardian_emails]
    )
  end
end
