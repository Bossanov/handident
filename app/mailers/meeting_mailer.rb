class MeetingMailer < ApplicationMailer

  def creation_confirmation(meeting)
    @meeting = meeting
    mail(
      # to:       @meeting.destinataire.email,
      to:       "aurelien@gmail.com",
      subject:  "DESTINATAIRE TO BE CHANGED: Nouveau rdv depuis Handident"
    )
  end
end
