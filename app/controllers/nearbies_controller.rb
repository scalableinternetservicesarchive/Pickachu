class NearbiesController < ApplicationController
  before_action :set_nearby, only: [:show, :edit, :update, :destroy]

  # GET /nearbies
  # GET /nearbies.json
  def index
    @nearbies = Nearby.all
  end

  # GET /nearbies/1
  # GET /nearbies/1.json
  def show
  end

  # GET /nearbies/new
  def new
    @nearby = Nearby.new
  end

  # GET /nearbies/1/edit
  def edit
  end

  # POST /nearbies
  # POST /nearbies.json
  def create
    @nearby = Nearby.new(nearby_params)

    respond_to do |format|
      if @nearby.save
        format.html { redirect_to @nearby, notice: 'Nearby was successfully created.' }
        format.json { render :show, status: :created, location: @nearby }
      else
        format.html { render :new }
        format.json { render json: @nearby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nearbies/1
  # PATCH/PUT /nearbies/1.json
  def update
    respond_to do |format|
      if @nearby.update(nearby_params)
        format.html { redirect_to @nearby, notice: 'Nearby was successfully updated.' }
        format.json { render :show, status: :ok, location: @nearby }
      else
        format.html { render :edit }
        format.json { render json: @nearby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nearbies/1
  # DELETE /nearbies/1.json
  def destroy
    @nearby.destroy
    respond_to do |format|
      format.html { redirect_to nearbies_url, notice: 'Nearby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nearby
      @nearby = Nearby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nearby_params
      params[:nearby]
    end
end
