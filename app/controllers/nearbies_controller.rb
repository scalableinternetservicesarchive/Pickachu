class NearbiesController < ApplicationController
  before_action :set_nearby, only: [:show, :edit, :update, :destroy]

  # GET /nearbies
  # GET /nearbies.json

    #search for user name
  def getUserName(id)
    if id != nil
      @user = User.find(id)
    end
    return @user.name
  end
  helper_method :getUserName

  def index

    @pickups = Pickup.all
    @hash = Gmaps4rails.build_markers(@pickups) do |pickup, marker|
    if (pickup.pickedup == false)
      marker.lat pickup.lat
      marker.lng pickup.lng
      marker.title pickup.name
      marker.infowindow '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">' + pickup.name + '</h1>'+
      '<div id="bodyContent">'+
      '<img src="' + pickup.avatar.url + '" class="pickup-img">' +
      '<h3> $' + pickup.price.to_s + '</h3>' +
      '<h3> Seller: ' + getUserName(pickup.user_id) + '</h3>' +
      '<p>' + pickup.description + '</p>' +
      '<p> <a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> PICK IT UP! </a>' +
      '<a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> MORE INFO </a> </p>' +
      '</div>'+
      '</div>';
    elsif (pickup.pickedup == true)
      marker.lat pickup.lat
      marker.lng pickup.lng
      marker.title pickup.name
      marker.infowindow '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">' + pickup.name + '</h1>'+
      '<div id="bodyContent">'+
      '<img src="' + pickup.avatar.url + '" class="pickup-img">' +
      '<h3> $' + pickup.price.to_s + '</h3>' +
      '<h3> Seller: ' + getUserName(pickup.user_id) + '</h3>' +
      '<p>' + pickup.description + '</p>' +
      '<p> <a class="btn btn-default disabled"> Picked </a>' +
      '<a class="btn btn-primary" href="/pickups/' + pickup.id.to_s + '"> MORE INFO </a> </p>' +
      '</div>'+
      '</div>';
    end

    end
    @pickups.each do |pickup|
      #puts(pickup)
    end
  end



  # GET /nearbies/1
  # GET /nearbies/1.json
  # Endpoint not activated yet

  def show
  end

  # GET /nearbies/new
  def new
    # @nearby = Nearby.new
  end

  # GET /nearbies/1/edit
  def edit
  end

  # POST /nearbies
  # POST /nearbies.json
  def create
    # @nearby = Nearby.new(nearby_params)

    # respond_to do |format|
    #   if @nearby.save
    #     format.html { redirect_to @nearby, notice: 'Nearby was successfully created.' }
    #     format.json { render :show, status: :created, location: @nearby }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @nearby.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /nearbies/1
  # PATCH/PUT /nearbies/1.json
  def update
    # respond_to do |format|
    #   if @nearby.update(nearby_params)
    #     format.html { redirect_to @nearby, notice: 'Nearby was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @nearby }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @nearby.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /nearbies/1
  # DELETE /nearbies/1.json
  def destroy
    # @nearby.destroy
    # respond_to do |format|
    #   format.html { redirect_to nearbies_url, notice: 'Nearby was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nearby
      @pickup = Pickup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nearby_params
      params[:nearby]
    end
end
