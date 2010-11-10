class Featureitem < ActiveRecord::Base
  belongs_to :page
  has_one :image
  
  accepts_nested_attributes_for :image
  attr_accessible :image_attributes
  acts_as_list
end
