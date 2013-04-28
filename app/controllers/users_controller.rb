class UsersController < ApplicationController 
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to login_path
		else
			flash[:notice] = "Passwords don't match"
			render :new
		end
	end

	def login
		render "login"
	end
end