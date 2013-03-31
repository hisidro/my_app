class ProfileImagesController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy

  def create
	  @profile_image = current_user.profile_images.build(params[:profile_image])
  	if @profile_image.save
	   flash[:success] = "Image Added!"
     redirect_to user_path(current_user)
  	else
  	  flash[:error]	= "There was an error saving your image."
  	  redirect_to :back
  	end
  end

  def destroy
    @profile_image.destroy
    flash[:success] = "Image/File destroyed!"
    redirect_to user_path(current_user)
  end

  private

    def correct_user
      @profile_image = current_user.profile_images.find_by_id(params[:id])
      redirect_to user_path(current_user) if @profile_image.nil?
    end
end
