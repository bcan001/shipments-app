class SessionsController < ApplicationController

	def new
		# form
	end

	def create

		@user = User.find_by(:username => session_params[:username]).try(:authenticate, session_params[:password])


		#binding.pry

		if @user
			session[:user_id] = @user.id
			redirect_to shipments_path
		else
			render 'sessions/new'
		end
	end

	def destroy
		session.clear
		redirect_to root_path
	end

	private
	def session_params
		params.require(:session).permit(:username,:password)
	end


end
