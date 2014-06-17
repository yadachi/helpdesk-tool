class DashboardController < ApplicationController
	before_filter :check_logined

	def index
		@issues = Issue.where(:assigned_to => User.find_by(:userid => session[:user_id]).id)
	end

end
