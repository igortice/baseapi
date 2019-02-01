# frozen_string_literal: true

module Ability::Roles::User
  extend ActiveSupport::Concern

  included do
    def user
      can [:index], User
    end
  end
end
