class ApplicationController < ActionController::API
  before_action :authorize_request

  private
    def authorize_request
      /^Bearer (?<bearer>.*)$/ =~ request.headers['Authorization']
      if AuthToken.where(token: bearer).count == 0
        render json: {
          errors: [{ title: "You need to log in for that action"}] }, status: :unauthorized
      end
    end
end
