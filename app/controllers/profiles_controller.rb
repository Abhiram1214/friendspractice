class ProfilesController < ApplicationController
  def home
    if current_user
      @friends = current_user.friendships
      
      puts "********friends***************"
      puts @friends.inspect
      @posts = current_user.posts
      
    end  
        
        puts "$$$$$$$$"
        puts @friends
        puts "$$$$$$$$"
  end
  
  def user_list
    @user_all = User.all
    
  end
  
  def friends_posts
    @friends_post = Friendship.all    
  end
end
