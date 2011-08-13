class UsersController < ApplicationController
  def github_auth_callback
    auth_hash = request.env['omniauth.auth']
  end
end
