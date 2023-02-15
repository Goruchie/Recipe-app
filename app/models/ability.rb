# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # user ||= User.new # guest user (not logged in)

    # can :read, :all
    # can :destroy, Recipes, user_id: user.id

    # The author can edit and destroy their own posts
    # can :manage, Recipe, user_id: user.id
    # can :manage, Recipe, user_id: user.id if user.present?

    # can :manage, :all if user.present?
    # can :manage, Food, user_id: user.id if user.present?
    # can :manage, Inventory, user_id: user.id if user.present?
    # can :manage, InventoryFood, inventory: { user_id: user.id }
    # can :manage, Recipe, user_id: user.id if user.present?
    # cannot :read, Recipe, user_id: != user.id
    # can :read, :all
    # cannot :read, Recipe do |r|
    #   r.user_id != user.id
    # end
    can :read, Recipe, user_id: user.id
  end
end
