class TutorialPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def favorite?
    true
  end
end
