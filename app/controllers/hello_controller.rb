class HelloController < ApplicationController
	def view
		@name = params[:name]
	end

	def again 
		render text: "Hello, again!"
	end
end
	