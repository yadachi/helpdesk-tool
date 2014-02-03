class LoginsController < ApplicationController

	def index
		render "new"
	end

	def show
		render "new"
	end

	def create
		user = User.find_by userid: params[:user_id]
		if user && user.authenticate(params[:pass])
			# Add to session
			session[:user_id] = user.userid
			redirect_to issues_path
		else
			# Set message to flash variable
			flash.now.alert = "Please re-enter."
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		@current_user = nil
		redirect_to logins_path
	end
end