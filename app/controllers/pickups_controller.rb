class PickupsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_pickup, only: [:show, :edit, :update, :destroy]

  #caches configuration
  caches_action :index, :show

  #search for user name
  def getUserName(id)
    if id != nil
      @user = User.find(id)
    end
    return @user.name
  end
  helper_method :getUserName

  def getLocation
  end

  def index
      # @pickup = Pickup.new
      @users = User.all
      @alert = ''
      expire_cache_for_pickup_index

      if params[:search_des]
        expire_cache_for_pickup_index
        @pickups = Pickup.search_des(params[:search_des]).order("created_at DESC")

      elsif params[:search_area]
        expire_cache_for_pickup_index
        @alert = ''
        if (params[:lng][0] != '' && params[:lat][0] != '')
          @pickups = Pickup.search_area(params[:search_area].to_f, params[:lng][0].to_f, params[:lat][0].to_f)
        else
          puts('Parameter not available')
          @pickups = Pickup.order("updated_at DESC").take(15)
          @alert = 'We do not know your position yet! So we cannot search within area!'
          flash.now[:alert] = @alert
        end
      elsif params[:search_type]
        expire_cache_for_pickup_index
        @pickups = Pickup.search_type(params[:search_type]).order("created_at DESC").take(15)
      else
        # @pickups = Pickup.order("updated_at DESC").take(15)
        @pickups = Pickup.all
        #@pickups = Pickup.order("created_at DESC")
      end

    # if params[:search_area].kind_of? Float
    #   @pickups = Pickup.search_area(params[:search_area]).order("created_at DESC")
    # else
    #   @pickups = Pickup.order("created_at DESC")
    # end

  end

  # GET /pickups/1
  # GET /pickups/1.json
  def show
      #not modified not showing up
      fresh_when :last_modified => @pickup.published_at.utc, :etag => @pickup
      @hash = Gmaps4rails.build_markers(@pickup) do |pickup, marker|
      marker.lat pickup.lat
      marker.lng pickup.lng
      marker.title pickup.name
      marker.infowindow pickup.description

      end
  end

  # GET /pickups/1/edit
  def edit
  end

  # PUT /pickups/pickup/1
  def pickup
    @pickup = Pickup.find(params[:id])
    @pickup.update_attribute(:pickedup, 'true');
    expire_action action:[:index,:show]
    redirect_to(:back)
  end

  # POST /pickups
  # POST /pickups.json
  def create
    @pickup = Pickup.new(pickup_params)

    respond_to do |format|
      if @pickup.save
        format.html { redirect_to pickups_url, notice: 'Pickup was successfully created.' }
        format.json { render :index, status: :created, location: @pickup }
      else
        format.html { render :new }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end

    expire_action action:[:index,:show]
  end

  # PATCH/PUT /pickups/1
  # PATCH/PUT /pickups/1.json
  def update
    respond_to do |format|
      if @pickup.update(pickup_params)
        format.html { redirect_to @pickup, notice: 'Pickup was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup }
      else
        format.html { render :edit }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end

    expire_action action:[:index,:show]
  end

  # DELETE /pickups/1
  # DELETE /pickups/1.json
  def destroy
    @pickup.destroy
    respond_to do |format|
      format.html { redirect_to pickups_url, notice: 'Pickup was successfully destroyed.' }
      format.json { head :no_content }
    end

    expire_action action:[:index,:show]
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup
      @pickup = Pickup.find(params[:id])
      # @pickups = Pickup.all

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_params
      params.require(:pickup).permit(:user_id, :name, :lng, :lat, :obj_type, :image_url, :price, :start_time, :end_time, :description, :avatar)
    end


    def expire_cache_for_pickup_index
      puts 'Removing cache!'
      cache_key = "views/#{request.host_with_port}/pickups"
      Rails.cache.delete(cache_key)
    end
end
