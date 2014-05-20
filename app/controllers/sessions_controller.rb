class SessionsController < ApplicationController

  # GET /sessions
  # GET /sessions.json
  def index
=begin
    @sessions = Session.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sessions }
    end
=end
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
=begin
    @session = Session.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @session }
    end
=end
  end

  # GET /sessions/new
  # GET /sessions/new.json
  def new
=begin
    @session = Session.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @session }
    end
=end
  end

  # GET /sessions/1/edit
  def edit
=begin
    @session = Session.find(params[:id])
=end
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

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  def update
=begin
    @session = Session.find(params[:id])

    respond_to do |format|
      if @session.update_attributes(session_params)
        format.html { redirect_to @session, notice: 'Session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    sign_out
    flash[:notice] = 'You signed out.'
    redirect_to root_url
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def session_params
      params.require(:session).permit()
    end
end
