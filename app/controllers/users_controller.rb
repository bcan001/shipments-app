class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:notice] = "User Successfully created"
			redirect_to shipments_path
		else
			@error = "Please fill in the fields correctly to create a user"
			render 'new'
		end

	end

	def edit

	end

	def update

	end

	def index

	end

	def show

	end

	def destroy

	end

	private
	def user_params
		params.require(:user).permit(:username, :password)
	end

end