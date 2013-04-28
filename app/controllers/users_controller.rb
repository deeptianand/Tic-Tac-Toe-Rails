class UsersController < ApplicationController 
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to "/users/login"
		else
			flash[:notice] = "Passwords don't match"
			redirect_to root_path
		end
	end

	def login

	end
end