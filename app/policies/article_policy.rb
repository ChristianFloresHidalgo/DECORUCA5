class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end 

  def show?
    return true
  end

  def index?
    return true
  end 

  def create?
    user_is_admin?
  end

  def update?
    user_is_admin?
  end

  def destroy?
    user_is_admin?
  end

  private

  def user_is_admin?
    user.admin?
  end
end
