class MailController < ApplicationController

  def send_email
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @content = params[:content]

    respond_to do |format|
      UserMailer.with(name: @name, phone: @phone, email: @email, content: @content)
          .system_message.deliver_later
      format.js
    end

  end
end
