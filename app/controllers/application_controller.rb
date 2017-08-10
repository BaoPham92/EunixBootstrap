class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	# checks for Guests
	def GeustUser 
		if devise_controller? 
		@current_user = super 
	else 
		@current_user ||= super || GuestUser.new     
		end 
	end

end
