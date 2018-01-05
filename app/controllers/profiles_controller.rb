class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    fail
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

  def show
  end

  def index
  end

  def edit
  end
end
