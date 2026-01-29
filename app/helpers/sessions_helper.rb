module SessionsHelper
  def user_last
    User.second
  end
end
