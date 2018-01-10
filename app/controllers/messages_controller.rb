class MessagesController < ApplicationController
  def new
    @message = Message.new
    @profile = current_user.profile
  end

  def create
    @message = Message.new(message_params)
    @profile = current_user.profile
    @message.profile = @profile

    if @message.save
      redirect_to root_path
      flash[:notice] = 'Votre message a été envoyé !'

    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'

    end
  end

  private

  def message_params
    params.require(:message).permit(:message_title, :message_content, :message_photo, :message_photo_cache)

  end
end
