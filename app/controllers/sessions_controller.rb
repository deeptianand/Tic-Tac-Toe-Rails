class SessionsController < ApplicationController 
	
	def new

	end

	def create
		@user = User.find_by_email(params[:user][:email])
		if @user && @user.authenticate(params[:user][:password])
			session[:current_user_id] = @user.id
			redirect_to root_path
		else
			flash[:mess] = "Invalid credentials"
			redirect_to '/login'
		end
	
	end

	def login
		
	end
end