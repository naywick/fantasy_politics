class PoliticianScorePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # def index?
  #   true
  # end

  def create?
    return false
  end

  def show?
    return true
  end

  def update?
    return false
  end

  def destroy?
    return false
  end

  private

  def record_owner?
    record.user == user
  end
end
