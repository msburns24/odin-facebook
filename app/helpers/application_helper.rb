module ApplicationHelper

  def test_current_user
    user_id = 1
    return User.find(user_id)
  end
end
