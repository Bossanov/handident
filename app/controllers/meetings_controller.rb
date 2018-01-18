class MeetingsController < ApplicationController
  def new
    @meeting = Meeting.new
    @profile = current_user.profile
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @profile = current_user.profile
    @meeting.profile = @profile

    if @meeting.save
      redirect_to root_path
      flash[:notice] = 'Votre demande a été transmise !'

    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'

    end
  end

  private

def meeting_params
    params.require(:meeting).permit(:reason, :disponibility)

  end
end
