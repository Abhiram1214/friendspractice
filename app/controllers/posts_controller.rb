class PostsController < ApplicationController
  def new
    @new_post=Post.new    
    @new_post.build_image#=Image.new
  end
  
  def create
    p "**********************************"
    p params
    
    @new_post=Post.new(new_post)
    @new_post.user_id=current_user.id
    @new_post.save!    
    redirect_to profiles_home_path
  end
  
   def edit
    p "################################"
    p params
    
    @edit_image=Image.find(params[:id])
  end
  
  def update
    p params
    
    @edit_image=Image.find(params[:id])
    @edit_image.update_attributes(edit_image)
    redirect_to profiles_home_path
  end
  
  def destroy
    Image.find(params[:id]).destroy
    redirect_to profiles_home_path 
  end
 
  
  private
  def new_post
    params.require(:post).permit(:post, image_attributes:[:avatar])
  end
end
