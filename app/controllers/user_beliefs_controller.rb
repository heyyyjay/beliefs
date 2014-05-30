class UserBeliefsController < ApplicationController

  def new
    @user_belief = new
  end

  def create
    @user_belief = UserBelief.new (user_belief_params)
    if @user_belief.save
      format.json { render json: @user_belief, status: :create, location: @user_belief }
    else
      format.json {render json: @user_belief.errors, status: :unprocessable_entity }
    end
  end

  private

    def user_belief_params
      params.require(:user_belief).permit(:user_id, :belief_id)
    end

end
