class DashboardsController < ApplicationController
  def dashboard

    @favorite_lessons = FavoriteLesson.where(user: current_user)
    authorize @favorite_lessons

    @favorite_tutorials = FavoriteTutorial.where(user: current_user)
    authorize @favorite_tutorials
  end
end
