class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def check_logined
    if session[:user_id] then
      begin
        @user = User.find_by userid: session[:user_id]
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end

    unless @user
      flash[:referer] = request.fullpath
      redirect_to logins_path
    end
  end

  def current_user
  	if session[:user_id]
  		# if @current_user is nil or false, insert login user
  		@current_user ||= User.find(session[:user_id])
  	end
  end

  helper_method :current_user

end