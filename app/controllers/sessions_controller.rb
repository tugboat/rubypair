class SessionsController < ApplicationController
  def create
    user_info = request.env['omniauth.auth']['user_info']
    user_hash = request.env['omniauth.auth']['extra']['user_hash']

    login = user_hash['login']
    unless user = User.where(github_login: login).first
      user = User.new
      user.github_login = login
      user.email = user_info['email']
      user.github_url = user_info['urls']['GitHub']
      user.blog_url = user_info['urls']['Blog']
      user.gravatar_id = user_hash['gravatar_id']
      user.location = user_hash['location']
      user.save!
    end

    session[:github_login] = user.github_login

    flash[:notice] = "You have successfully signed in!"

    redirect_to :root
  end

  def destroy
    session[:github_login] = nil
    redirect_to :root
  end
end
