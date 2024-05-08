class SchoolPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      return unless user.admin? || user.headteacher?

      scope.all
    end
  end

  def create?
    user.admin? || user.headteacher?
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end
