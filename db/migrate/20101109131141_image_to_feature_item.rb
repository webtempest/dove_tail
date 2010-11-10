class ImageToFeatureItem < ActiveRecord::Migration
  def self.up
    rename_column :images, :page_id, :featureitem_id
  end

  def self.down
    rename_column :images, :featureitem_id, :page_id
  end
end
