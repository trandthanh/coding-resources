class TutorialsController < ApplicationController
  def favorite
    authorize :tutorial, :favorite?

    @tutorial = Tutorial.find(params[:id])
    authorize @tutorial
    type = params[:type]
    if type == "favorite"
      current_user.favorited << @tutorial
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
      # redirect_to dashboard_path, notice: 'Added to favorites'
    elsif type == "unfavorite"
      current_user.favorited.delete(@tutorial)
      redirect_to dashboard_path, notice: 'Removed from favorites'
    else
      redirect_to dashboard_path, notice: 'Nothing happened'
    end
  end
end
