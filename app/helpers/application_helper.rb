module ApplicationHelper
  def user_signed_in?
    !!@current_user
  end
end
