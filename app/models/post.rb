class Post < ActiveRecord::Base
  belongs_to :user
  has_one :image
  accepts_nested_attributes_for :image
  has_many :comments
end
