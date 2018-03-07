class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.post_code.to_i < 60000 && @profile.post_code.to_i > 58999
      @profile.departement = "Nord"
    elsif @profile.post_code.to_i < 63000 && @profile.post_code.to_i > 61999
      @profile.departement = "Pas-de-Calais"
    elsif @profile.post_code.to_i < 3000 && @profile.post_code.to_i > 1999
      @profile.departement = "Aisne"
    elsif @profile.post_code.to_i < 81000 && @profile.post_code.to_i > 79999
      @profile.departement = "Somme"
    elsif @profile.post_code.to_i < 61000 && @profile.post_code.to_i > 59999
      @profile.departement = "Oise"
    end
    if @profile.save
      flash[:notice] = 'Votre profil a correctement été créé. Merci.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Un problème est survenu lors de la création de votre profil. Veuillez nous contacter svp.'
      redirect_to root_path
    end
  end

  def index
    # @profiles = Profile.where(category: "Dentiste")

      @profiles = Profile.where.not(latitude: nil, longitude: nil)
      @markers = Gmaps4rails.build_markers(@profiles) do |profile, marker|
        marker.lat profile.latitude
        marker.lng profile.longitude
        marker.infowindow "<p>Dr #{profile.first_name} #{profile.last_name}</p>"
      # marker.infowindow render_to_string(partial: "/profiles/map_box", locals: { profile: profile })
    end
  end

  def show
    @profile = Profile.find(params[:id])
    puts @profile
    @profile_coordinates = { lat: @profile.latitude, lng: @profile.longitude }
    @markers = Gmaps4rails.build_markers(@profile) do |profile, marker|
      marker.lat profile.latitude
      marker.lng profile.longitude
      marker.infowindow "<p>#{profile.address} #{profile.post_code} #{profile.city}</p>"
      # marker.infowindow render_to_string(partial: "/profile/map_box", locals: { profile: profile })
    end
    @articles = Article.where(profile_id: @profile.id, status: 'Validé')
    @articles_a_valider = Article.where(status: 'A Valider')
    @articles_refuses = Article.where(status: 'Refusé')
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.post_code.to_i < 60000 && @profile.post_code.to_i > 58999
      @profile.departement = "Nord"
    elsif @profile.post_code.to_i < 63000 && @profile.post_code.to_i > 61999
      @profile.departement = "Pas-de-Calais"
    elsif @profile.post_code.to_i < 3000 && @profile.post_code.to_i > 1999
      @profile.departement = "Aisne"
    elsif @profile.post_code.to_i < 81000 && @profile.post_code.to_i > 79999
      @profile.departement = "Somme"
    elsif @profile.post_code.to_i < 61000 && @profile.post_code.to_i > 59999
      @profile.departement = "Oise"
    end
    if @profile.update(profile_params)
      flash[:notice] = 'Votre profil a correctement été actualisé. Merci.'
      redirect_to profile_path(@profile)
    else
      flash[:notice] = 'Un problème est survenu lors de la mise à jour de votre profil. Veuillez nous contacter svp.'
      redirect_to profile_path(@profile)
    end
  end


  def citywithdept
    citylist = []
    res = []
    result = Profile.where(departement: params["dept"], category: "Dentiste")
    result.each do |dentiste|
      until citylist.include?(dentiste.city)
        res << {'id' => dentiste.id, 'city' => dentiste.city}
        citylist << dentiste.city
      end
    end
    respond_to do |format|
      format.json {
    render json: res
  }
  end
  end

  def dentistwithcity
    res = []
    result = Profile.where(city: params["city"], category: "Dentiste")
    result.each do |dentiste|
      res << {'id' => dentiste.id, 'first_name' => dentiste.first_name, 'last_name' => dentiste.last_name}
    end
    respond_to do |format|
      format.json {
      render json: res
      }
    end
  end

  def getSearch
    if params["dept"].present? && params["city"] == "" && params["id"] == ""
      flash[:notice] = 'Veuillez remplir le formulaire en entier. Merci.'

    elsif params["dept"].present? && params["city"].present? && params["id"] == ""
      flash[:notice] = 'Veuillez remplir le formulaire en entier. Merci.'
    else
      @prof = Profile.find_by_id(params["id"].to_i)

      redirect_to profile_path(@prof)
    end
  end

  private

  def profile_params
  params.require(:profile).permit(:first_name, :last_name, :address,:departement, :city, :post_code, :phone_number, :category, :birthday, :photo, :photo_cache, :biographie)
  end

end
