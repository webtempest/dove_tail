class Image < ActiveRecord::Base
  belongs_to :page
  has_attached_file :image, :styles => {:thumb => "240x185"}
end
