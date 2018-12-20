class DashboardsController < ApplicationController
  def dashboard

    @favorites = FavoriteLesson.where(user: current_user)
    authorize @favorites
  end
end
