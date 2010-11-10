class AddPageIdToFeatureitems < ActiveRecord::Migration
  def self.up
    add_column :featureitems, :page_id, :integer
  end

  def self.down
    remove_column :featureitems, :page_id
  end
end
