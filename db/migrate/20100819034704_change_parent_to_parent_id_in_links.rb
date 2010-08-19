class ChangeParentToParentIdInLinks < ActiveRecord::Migration
  def self.up
    rename_column :links, :parent, :parent_id
  end

  def self.down
    rename_column :links, :parent_id, :parent
  end
end
