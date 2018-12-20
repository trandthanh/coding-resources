class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]
  before_action :set_lesson

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
        respond_to do |format|
          format.js { render partial: 'search-results'}
        end
      else
        @results = Lesson.where("language_id = ? AND level = ?", params[:language], params[:level])
        respond_to do |format|
          format.js { render partial: 'search-results'}
        end
      end
    end
    if params[:search] == "tutorial"
      if params[:theme].blank?
        @results = Tutorial.where("language_id = ?", params[:tutlanguage])
        respond_to do |format|
          format.js { render partial: 'search-results'}
        end
      else
        @results = Tutorial.where("language_id = ?", params[:tutlanguage]).joins(:topic).where("theme_id = ?", params[:theme])
        respond_to do |format|
          format.js { render partial: 'search-results'}
        end
      end
    end

    if params[:search] == "lesson"
      if Favorite.create(favorited: @lesson, user: current_user)
        redirect_to root_path, notice: 'Lesson has been favorited'
      else
        redirect_to root_path, alert: 'Something went wrong...*sad panda*'
      end
    end

  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id] || params[:id])
  end
end
