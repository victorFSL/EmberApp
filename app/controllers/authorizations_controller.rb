class AuthorizationController < ActiveController::APIs
  def create
    auth_client = Google::APIClient::ClientSecrets.new('web' => {
      client_id: ENV["google_client_id"],
      client_secret: ENV["google_client_secret"],
      redirect_url: 'http://localhost:4200/oauth2callback'
      }).to_authorization
      client.grant_type = 'authorization_code'
      client.code = params['authorization_code']
      token = client.fetch_access_token!

      client = Google::Apis::Oauth2V2::Oauth2Service.new
      client.authorization = auth_client
      user_info = client.get_userinfo

      auth_token = AuthToken.where(email: user_info.email).first_or_create
      auth_token.update(token: token)

      render json: {
        email: user_info.email,
        token: token
      }
  end
end
