class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:search]

  def search
    @languages = Language.all
    @levels = Lesson.all.distinct.pluck(:level)
    @themes = Theme.all
    @topics = Topic.all

    if params[:search] == "lesson"
      @results = Lesson.where("language_id = ? AND level = ?", params[:language], params[:level])
    end

    if params[:search] == 'tutorial'
      @results = Tutorial.where("language_id = ?", params[:tutlanguage])
    end

    unless params[:search]
      @results = []
    end

    # if params[:tutlanguage]
    #   @results = Tutorial.where("language_id = ?", params[:tutlanguage])
    # else
    #   @results = []
    # end
  end
end
