class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(meerkat: meerkat)
    end
  end

  def create?
    true
  end
end
