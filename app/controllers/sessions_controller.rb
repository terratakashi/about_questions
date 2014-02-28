class SessionsController < ApplicationController
  def new

  end

  def create

  user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])

      session[:user_id] = user.id
      flash[:notice] = 'You have logged in'
      redirect_to root_path
    else
      flash[:error] = 'there is something wrong with yr log info'
      render :new

    end
  end
end