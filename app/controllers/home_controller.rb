class HomeController < ApplicationController
  def index
    @newest_users = User.all(sort: :created_at).limit(5)
  end
end
