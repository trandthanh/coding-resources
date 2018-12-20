class FavoriteLessonsController < ApplicationController
  before_action :set_lesson

  def create
    if Favorite.create(favorited: @lesson, user: current_user)
      redirect_to root_path, notice: 'Lesson has been favorited'
    else
      redirect_to root_path, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorited_id: @lesson.id, user_id: current_user.id).first.destroy
    redirect_to root_path, notice: 'Lesson is no longer in favorites'
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id] || params[:id])
  end
end
