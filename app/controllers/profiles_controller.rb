class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:notice] = 'Profile was successfully created.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Your profile has not been created, please update your profile later.'
      redirect_to root_path
    end
  end

  def index
    @profiles = Profile.all
  end

  def show
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
  end

  private

  def profile_params
  params.require(:profile).permit(:first_name, :last_name, :address, :city, :post_code, :phone_number, :category, :birthday)
  end

end
