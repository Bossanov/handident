class MessageMailer < ApplicationMailer

  def creation_confirmation(message)
    @message = message
    miresult = Profile.where(maildest: @message.destinataire)
    result = User.where(id: miresult.first.user_id)

    mail(
      # to:       @message.destinataire.email,
      to:       result.first.email,
      subject:  "DESTINATAIRE TO BE CHANGED: Nouveau message depuis Handident"
    )
  end
end
