class CropsController < ApplicationController
  before_action :set_crop, only: [:show, :edit, :update, :destroy]

  # POST /crops
  # POST /crops.json
  def create
    @crop = Crop.new(crop_params)

      if @crop.save
        render json:@crop
      else @crop.errors
        render json: {error: {code: 400, server_message: @crop.errors}}, status: :bad_request
      else
        render json: {error: {code: 500, message: "Could not save crop", server_message: @crop.errors}}, status: :internal_server_error
      end
  end

  # PATCH/PUT /crops/1
  # PATCH/PUT /crops/1.json
  def update
    @crop = Crop.find(params[:id])
      if @crop.update(crop_params)
        render json:@crop
      else
        render json: { error: {code: 404, message: 'Invalid crop' }}, status: :not_found
      end
  end

  # GET /crops
  # GET /crops.json
  def index
    @crops = Crop.all
  end

  # GET /crops/1
  # GET /crops/1.json
  def show
  end

  # GET /crops/new
  def new
    @crop = Crop.new
  end

  # GET /crops/1/edit
  def edit
  end



  # DELETE /crops/1
  # DELETE /crops/1.json
  def destroy
    @crop.destroy
    respond_to do |format|
      format.html { redirect_to crops_url, notice: 'Crop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crop
      @crop = Crop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crop_params
      params.require(:crop).permit(:user_id, :crop_type_id, :description, :weight)
    end
end
