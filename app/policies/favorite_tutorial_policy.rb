class FavoriteTutorialPolicy < ApplicationPolicy
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

  def complete?
    true
  end

  def destroy?
    record.user == user
  end
end
