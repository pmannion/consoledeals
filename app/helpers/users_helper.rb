module UsersHelper

  def user_url(current_user)
    "/users/#{current_user.id}/"
  end

  def index_users_path
    '/users-index/'
  end

  def banned_users_path
    '/banned-users/'
  end

  def ban_user_path(user)
    "/ban-this-user/#{user.id}/"
  end

  def remove_ban_path(user)
    "/unban-this-user/#{user.id}/"
  end

end
