class UsersController < ApplicationController
	before_action :find_user
  before_action :load_activities, only: [:index, :show, :new, :edit]


  def edit

  end

  def update
  	if @user.update(user_params)
  		flash[:success] = "Interests updated"
  		redirect_to root_path
  	else
  		flash[:alert] = "Interests were not updated."
  		render :edit
  	end
  end

 private

 def find_user
 	@user = current_user	
 end

 def user_params
 	params.require(:user).permit(tag_ids: [])
 end
 
 def load_activities
      @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
 end

end


