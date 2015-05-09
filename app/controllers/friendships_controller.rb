class FriendshipsController < ApplicationController
  
  def request_friendship
    @from_id = current_user.id
    @to_id = params[:to_id]
    @request = Friendship.create(pending_request_from: @from_id, pending_request_to: @to_id,user_id: current_user.id, accepted: false )
  end
  
  def notifications
       
    
    @req = User.where(current_user.id)
    @friend = Friendship.where(:pending_request_to=>@req)
    @to = User.where(:id=>@friend)
    
    puts "**************"
    puts @to_id
    puts "**************"
    
    
  end
  
  def accept_friendship
    puts "#############"
    puts params
    puts "#############"
    
    @accept = Friendship.new
    
    
  end
end
