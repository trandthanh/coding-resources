class DashboardPolicy < ApplicationPolicy
  def dashboard?
    true
  end

  def favorite?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end

  def destroy?
    record.user == user
  end
end
