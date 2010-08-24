class Link < ActiveRecord::Base
  acts_as_list 
  acts_as_tree
  validates_presence_of :page_id, :on => :create, :message => "can't be blank (needs a page to go to)"
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  
  scope :root_links_without_root, lambda{|id| where("title != 'root' AND parent_id = #{id}").order("position")}
  scope :root_links_with_root, lambda{|id| where("parent_id = #{id} OR title = 'root'").order("position")}
  
end
