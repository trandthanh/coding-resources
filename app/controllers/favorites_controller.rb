class FavoritesController < ApplicationController
  def index
    @current_user_favlessons = current_user.favorite_lessons
    @favorites = policy_scope(Favorite)
    # authorize @current_user_favlessons
  end
end
