class AdminController < ApplicationController
	before_filter :authenticate_user
	def authenticate_user
		if !session[:user].present?
			redirect_to session_new_url 		
		end 	
	end 
end