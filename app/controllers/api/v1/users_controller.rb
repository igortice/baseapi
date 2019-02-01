# frozen_string_literal: true

class API::V1::UsersController < API::V1::BaseController
  load_and_authorize_resource

  def index
    users = @users.page(params[:page])

    render json: UserSerializer.new(users)
  end
end
