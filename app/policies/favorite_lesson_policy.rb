class FavoriteLessonPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end

  end
    def dashboard?
      true
    end

    def favorite?
      true
    end
end
