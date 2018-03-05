class DonationsController < ApplicationController
  def new
    if current_user.profile == nil
      redirect_to new_user_session_path
      flash[:alert] = 'Merci créer votre compte avant de publier un avis'
    else
      @donation = Donation.new
      @profile = current_user.profile
    end
  end

  def create
    @donation = Donation.new(donation_params)
    @profile = current_user.profile
    @donation.profile = @profile

    if @donation.save
      redirect_to root_path
      flash[:notice] = 'Merci !'

    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'

    end
  end

  private

  def donation_params
    params.require(:donation).permit(:value, :moyen)
  end

end
