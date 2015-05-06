class ProfilesController < ApplicationController
  def home
    if current_user
      @posts = current_user.posts  
    end  
        
  end
end
