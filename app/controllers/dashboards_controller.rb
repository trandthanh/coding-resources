class DashboardsController < ApplicationController
  def dashboard
    @favorite_lessons = FavoriteLesson.where(user: current_user, completed: false)
    authorize @favorite_lessons

    @favorite_tutorials = FavoriteTutorial.where(user: current_user, completed: false)
    authorize @favorite_tutorials

    @completed_lessons = FavoriteLesson.where(user: current_user, completed: true)
    @completed_tutorials = FavoriteTutorial.where(user: current_user, completed: true)
  end
end
