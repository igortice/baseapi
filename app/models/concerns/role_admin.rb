# frozen_string_literal: true

module RoleAdmin
  extend ActiveSupport::Concern

  included do
    def admin
      can :manage, :all
    end
  end
end
