class TopicsController < ApplicationController
  def get_topics_by_theme
    @topics = Topic.where("theme_id = ?", params[:theme])
    respond_to do |format|
      format.json { render :json => @topics }
    end
  end

  def course_search
    if params[:theme].present? && params[:theme].strip != ""
      @topics = Topic.where("theme_id = ?", params[:theme])
    else
      @topics = Topic.all
    end
  end
end
