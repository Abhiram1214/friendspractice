class PostsController < ApplicationController
	before_action :authenticate_user!
	def new
		@posts = Post.new
		
		

		@posts.image = Image.new
	end
	def create
		
		@posts = Post.new(posts_params)
		@posts.user_id = current_user.id
		@posts.save!   
        
	end
	
private

	def posts_params
		params.require(:post).permit(:post,image_attributes: [:avatar])
	end
end
                                                                                                                                                                                                                                                                             
