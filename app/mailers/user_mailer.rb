class UserMailer < ApplicationMailer

  def system_message
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @content = params[:content]

    mail(to: Rails.application.config.target_email, subject: 'Wiadomość z systemu GreenEvolution')
  end
end
