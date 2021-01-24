class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to user_path(@profile.user)
  end

  private
  def profile_params
    params.require(:profile).permit(:image, :self_introduction, :website)
  end
end
