class LessonPolicy < ApplicationPolicy

  def favorite?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
