class ProfilesController < ApplicationController
  def home
    if current_user
      @posts = current_user.posts  
    end  
        
  end
  
  def user_list
    @user_all = User.all
  end
end
