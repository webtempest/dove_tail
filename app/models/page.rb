class Page < ActiveRecord::Base
  has_many :featureitems, :dependent => :destroy
  accepts_nested_attributes_for :featureitems
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_uniqueness_of :title, :on => :create, :message => 'must be unique'
end
