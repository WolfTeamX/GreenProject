class UserMailer < ApplicationMailer

  def system_message
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @content = params[:content]

    mail(to: 'kanewers@gmail.com', subject: 'Green test')
  end
end
