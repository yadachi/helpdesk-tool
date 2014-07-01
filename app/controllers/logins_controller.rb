class LoginsController < ApplicationController

	def index
		render "new", :layout => false
	end

	def show
		render "new", :layout => false
	end

	def create
		user = User.find_by userid: params[:user_id]
		if user && user.authenticate(params[:pass])
			# Add to session
			session[:user_id] = user.userid
			session[:user_name] = user.name
			redirect_to root_path
		else
			# Set message to flash variable
			flash.now.alert = "Invalid User ID or Password. Please re-enter."
			render "new", :layout => false
		end
	end

	def destroy
		session[:user_id] = nil
		@current_user = nil
		redirect_to logins_path
	end
end