class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]

  def search
    @languages = Language.all
    @levels = Lesson.all.distinct.pluck(:level)
    @themes = Theme.all
    @topics = Topic.all

    unless params[:search]
      @results = []
    end
    if params[:search] == "lesson"
      if params[:level].blank?
        @results = Lesson.where("language_id = ?", params[:language])
      else
        @results = Lesson.where("language_id = ? AND level = ?", params[:language], params[:level])
      end
    end
    if params[:search] == "tutorial"
      if params[:theme].blank?
        @results = Tutorial.where("language_id = ?", params[:tutlanguage])
      else
        @results = Tutorial.where("language_id = ?", params[:tutlanguage]).joins(:topic).where("theme_id = ?", params[:theme])
      end
    end
  end
end
