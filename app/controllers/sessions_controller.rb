class SessionsController < ApplicationController
  def create
    raise request.env['omniauth.auth'].to_yml
  end
end
