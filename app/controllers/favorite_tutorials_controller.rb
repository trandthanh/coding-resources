class FavoriteTutorialsController < ApplicationController
  before_action :set_favorite_tutorial, only: [:complete, :destroy]

  def complete
    authorize :favorite_tutorial, :complete?

    @favorite_tutorial.toggle(:completed).save
    redirect_to dashboard_path
  end

  def destroy
    @favorite_tutorial.destroy
    authorize @favorite_tutorial
    redirect_to dashboard_path
  end

  private

  def set_favorite_tutorial
    @favorite_tutorial = FavoriteTutorial.find(params[:id])
  end
end
