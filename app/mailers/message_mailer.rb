class MessageMailer < ApplicationMailer

  def creation_confirmation(message)
    @message = message
    mail(
      # to:       @message.destinataire.email,
      to:       "aurelien@gmail.com",
      subject:  "DESTINATAIRE TO BE CHANGED: Nouveau message depuis Handident"
    )
  end
end
