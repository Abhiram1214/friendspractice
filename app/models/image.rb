class Image < ActiveRecord::Base
  belongs_to :post
  belongs_to :profile
  belongs_to :pictures
  
  
  has_attached_file :avatar, :styles=>{:medium=>"300*300>", :thumb=>"100*100>", :gallery=>"700*700>"}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
end
