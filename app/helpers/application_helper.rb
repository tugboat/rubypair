module ApplicationHelper

  def display_remote_paring(users_preference)
    users_preference ? "Yes" : "Local Only"
  end

end
