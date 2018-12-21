class FavoriteLessonsController < ApplicationController
  before_action :set_favorite_lesson, only: [:complete, :destroy]

  def complete
    authorize :favorite_lesson, :complete?

    @favorite_lesson.toggle(:completed).save
    redirect_to dashboard_path
  end

  def destroy
    @favorite_lesson.destroy
    authorize @favorite_lesson
    redirect_to dashboard_path
  end

  private

  def set_favorite_lesson
    @favorite_lesson = FavoriteLesson.find(params[:id])
  end
end
