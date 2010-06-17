class RelationshipsController < ApplicationController
	before_filter :authenticate
	before_filter :get_followed_user

	def create
		current_user.follow!(@user)
		redirect_to  do |format|
			format.html { redirect_to @user }
			format.js
		end
	end

	def destroy
		current_user.follow!(@user)
		redirect_to do |format|
			format.html { redirect_to @user }
			format.js
		end
	end

	private
		
		def get_followed_user
			@user = User.find(params[:followed_id])
		end
end
