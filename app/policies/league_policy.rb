class LeaguePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record_owner?
  end

  def destroy?
    record_owner?
  end

  def my_leagues?
    true
  end

  private

  def record_owner?
    record.user == user
  end
end
