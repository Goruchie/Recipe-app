class Ability
  include CanCan::Ability

  def initialize(user)
    can :destroy, Recipe, user_id: user.id
    can :manage, Recipe, user_id: user.id
    can :read, Recipe do |r|
      # r.public || r.user_id == user.id
      r.user_id == user.id
    end
  end
end
