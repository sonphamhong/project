class SessionController < ApplicationController
  def new
  	@user = User.new
  end
end
