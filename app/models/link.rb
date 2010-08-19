class Link < ActiveRecord::Base
  acts_as_list scope: 'parent_id = #{parent_id}'
  acts_as_tree

  validates_presence_of :page_id, :on => :create, :message => "can't be blank (needs a page to go to)"
  validates_presence_of :title, :on => :create, :message => "can't be blank"
end
