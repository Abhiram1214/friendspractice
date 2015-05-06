class ImagesController < ApplicationController
  def new
    @pics=Image.new
  end
  
  def create
    p "*************************************"
    p params
    @pics=Image.create(new_image)
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
  
  def view_images
    @view_pic=Image.all
  end
  
  private
  def new_image
    params.require(:image).permit(:avatar,:avatar_file_name) 
  end
  
  def edit_image
    params.require(:image).permit(:avatar)
  end
   
end
