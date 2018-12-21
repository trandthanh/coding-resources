class DashboardsController < ApplicationController
  def dashboard

    @favorite_lessons = FavoriteLesson.where(user: current_user)
    authorize @favorite_lessons
  end
end
