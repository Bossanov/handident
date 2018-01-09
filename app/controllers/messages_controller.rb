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
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:message_title, :message_content, :message_photo)

  end
end
