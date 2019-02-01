# frozen_string_literal: true

module RoleUser
  extend ActiveSupport::Concern

  included do
    def user
      can [:index], User
    end
  end
end
