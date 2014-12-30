class SessionController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.find_by_email(params[:user][:email])
  	if @user.present? && @user.authenticate(params[:user][:password])
  		session[:user] = @user.id
  		redirect_to admin_root_url
  	else
  		flash[:error] = "Wrong email or password"
  		redirect_to session_new_url
  	end
  end

  def destroy
  	session.delete :user
  	redirect_to session_new_url
  end
end
