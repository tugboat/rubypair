class UsersController < ApplicationController
  def github_auth_callback
    raise request.env['omniauth.auth'].to_yml
  end
end
