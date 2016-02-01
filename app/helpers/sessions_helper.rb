module SessionsHelper
  def signed_in?
    @current_user =User.find_by(id: session[:user_id])
    !@current_user.nil?
  end
  def current_user(user)
    @current_user = user
  end

end
