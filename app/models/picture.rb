class Picture < ActiveRecord::Base
  belongs_to :album
  has_many :images
  
  accepts_nested_attributes_for :images
end
