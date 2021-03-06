class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]
  # before_action :authenticate, only: [:create, :update]

  # GET /profiles
  # GET /profiles.json
  def index
    #@profiles = @current_user.profiles

    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    render json: @profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    #@profile = @current_user.build_profile(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
      #@profile = current_user.profiles.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:location, :biography, :aliases, :username, :user_id)
    end
end
