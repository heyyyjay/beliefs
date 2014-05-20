class SessionsController < ApplicationController

  # GET /sessions/new
  # GET /sessions/new.json
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      flash[:notice] = 'You successfully logged in!'
      redirect_to user
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    sign_out
    flash[:notice] = 'You signed out.'
    redirect_to root_url
  end

end
