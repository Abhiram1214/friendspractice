class FriendshipsController < ApplicationController
  
  def request_friendship
    @from_id = current_user.id
    @to_id = params[:to_id]
    @request = Friendship.create(pending_request_from: @from_id, pending_request_to: @to_id,user_id: current_user.id, accepted: false )
  end
  
  def notifications       
    
    @req = User.where(:id=>current_user.id)
    @friend = Friendship.where(:pending_request_to=>@req)
    
    
    
    puts "**************"
    puts @req.inspect
    puts "**************"
        
  end
  
  def accept_friendship   
    
    
    @from_id = params[:to_id]
    @to_id = params[:from_id]
    
    @friend_accept = Friendship.where(:pending_request_from=>@from_id, :pending_request_to=>@to_id).first
    @friend_accept.update_attributes(accepted: true, :from_id=>@from_id, :to_id=>@to_id)
    
    
    puts "#############"
    puts @from_id
    puts @to_id
    puts "#############"
  end
  
  def index
    @friends_all = Friendship.all
  end
  
  def destroy
     
     
     
      @from_id = params[:from_id]
      @to_id = params[:to_id]
     
     Friendship.find(params[:id]).destroy
     
     
    puts "#############"
    puts params
    puts "#############"
  end
end
