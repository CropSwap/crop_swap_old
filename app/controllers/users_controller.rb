class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      render json:@user
    elsif @user.errors
      render json: {error: {code: 400, server_message: @user.errors}}, status: :bad_request
    else
      render json: {error: {code: 500, message: "Could not save user", server_message: @user.errors}}, status: :internal_server_error
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      render json:@user
    else
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
      format.json { head :no_content }
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  #
  # # GET /users/new
  def new
    @user = User.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :name, :phone_number, :description, :zip_code, :profile_pic)
    end
end
