class SignUpsController < ApplicationController

	def create
		s = SignUp.new
		s.name = params[:name]
		s.email = params[:email]
		s.save
	end

	def index
		@sign_ups = SignUp.all
	end

	def edit 
		@sign_up = SignUp.find(params[:id])
	end

	def update
    sign_ups_params = params.require(:sign_up).permit(:name, :email,)
    @sign_ups = SignUp.find(params[:id])
    @sign_ups.update(sign_ups_params)
	end

	def view
		@sign_up = SignUp.new
	end
    
    redirect_to '/'
  end

end
