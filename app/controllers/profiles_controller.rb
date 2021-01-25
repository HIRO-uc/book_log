class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :current_path_profile
  before_action :move_to_top

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to user_path(@profile.user)
  end

  private
  def profile_params
    params.require(:profile).permit(:image, :nickname, :self_introduction, :website)
  end
  
  def current_path_profile
    @profile = Profile.find(params[:id])
  end

  def move_to_top
    redirect_to root_path if @profile.user.id != current_user.id
  end
end
