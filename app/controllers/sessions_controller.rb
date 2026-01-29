class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path, notice: 'LOgged in'
    else
      flash.now[:alert] = 'Invalid email or password'
      render :new
    end
  end

  def delete
  end
end
