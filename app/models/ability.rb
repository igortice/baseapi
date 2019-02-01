# frozen_string_literal: true

class Ability
  include CanCan::Ability

  include ::RoleUser
  include ::RoleAdmin

  def initialize(user)
    @user = user || User.new

    alias_action :create, :read, :update, :destroy, to: :crud

    @user.roles.each { |role| send(role.to_sym) } unless @user.roles.size == 0
  end
end
