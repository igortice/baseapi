# frozen_string_literal: true

class API::V1::UsersController < API::V1::BaseController
  load_and_authorize_resource

  def index
    paginate json: @users
  end
end
