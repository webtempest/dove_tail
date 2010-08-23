class CreateAttachmentFiles < ActiveRecord::Migration
  def self.up
    create_table :attachment_files do |t|
      t.string :data_file_name
      t.string :data_content_type
      t.integer :data_file_size
      t.integer :assetable_id
      t.string :assetable_type
      t.string :type
      t.integer :locale
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :attachment_files
  end
end
