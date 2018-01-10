class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      flash[:notice] = 'Votre profil a correctement été créé. Merci.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Un problème est survenu lors de la création de votre profil. Veuillez nous contacter svp.'
      redirect_to root_path
    end
  end

  def index
    @profiles = Profile.where(category: "Dentiste")
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      flash[:notice] = 'Votre profil a correctement été actualisé. Merci.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Un problème est survenu lors de la mise à jour de votre profil. Veuillez nous contacter svp.'
      redirect_to profile_path(@profile)
    end
  end

  private

  def profile_params
  params.require(:profile).permit(:first_name, :last_name, :address, :city, :post_code, :phone_number, :category, :birthday, :photo, :photo_cache, :biographie)
  end

end
