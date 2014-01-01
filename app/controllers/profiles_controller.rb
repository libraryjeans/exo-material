class ProfilesController < ApplicationController

  # GET /profiles
  # GET /profiles.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @user = User.find(current_user.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end    	
end
