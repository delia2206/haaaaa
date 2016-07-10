class UsersController < ApplicationController

	def index 
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
	end

	  
	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
	    respond_to do |format|
		    if @user.update(user_params)
		        format.html { redirect_to @user, notice: 'user was successfully updated.' }
		    else
		        format.html { render :edit }
		    end
	  	end
	end

	def destroy
	  @user = User.find(params[:id])
	  @user.destroy
	  respond_to do |format|
	    format.html { redirect_to users_url, notice: 'user was successfully destroyed.' }
	  end
	end

	def user_params
	  params.require(:user).permit(:email, :role)
	end

end
