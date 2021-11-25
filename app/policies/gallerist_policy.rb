class GalleristPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    return true
  end

  def dislike?
    return true
  end

  def like?
    return true
  end
end
