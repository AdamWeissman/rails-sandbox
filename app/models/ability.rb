# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :read, Post
      can :destroy, Post
    elsif user.normal?
      can :read, Post, user: user
    end
  end
end
