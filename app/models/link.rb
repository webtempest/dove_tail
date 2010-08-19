class Link < ActiveRecord::Base
  acts_as_list

  validates_presence_of :page_id, :on => :create, :message => "can't be blank (needs a page to go to)"
  validates_presence_of :title, :on => :create, :message => "can't be blank"
end
