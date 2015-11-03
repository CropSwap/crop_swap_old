class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
        @token = Token.new
      if u.save
        @user = u
        render u
      else
        render json: { error: {code: 500, message: "Could not save user"}}, status: :internal_server_error
      end
    else
      render json: { error: {code: 401, message: 'Invalid username or password' }}, status: :unauthorized
    end
  end

  def destroy
    u = User.find(token: request.headers["user-token"])
    if u
      @token = nil
      u.save
      @user = nil
    else
      render json: { error: {code: 404, message: 'User not found by token' }}, status: :not_found
    end
  end

end
