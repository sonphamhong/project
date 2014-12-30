module SessionHelper
	def current_user
		@user = User.find_by_id(session[:user])
	end
end
