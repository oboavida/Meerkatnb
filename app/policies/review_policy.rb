class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(merrkat: meerkat)
    end
  end

  def create?
    true
  end
end
