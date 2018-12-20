class LessonsController < ApplicationController
  def favorite
    authorize :lesson, :favorite?

    @lesson = Lesson.find(params[:id])
    authorize @lesson
    type = params[:type]
    if type == "favorite"
      current_user.favorites << @lesson
      redirect_to dashboard_path, notice: 'Added to favorites'
    elsif type == "unfavorite"
      current_user.favorites.delete(@lesson)
      redirect_to dashboard_path, notice: 'Removed from favorites'
    else
      redirect_to dashboard_path, notice: 'Nothing happened'
    end
  end
end
