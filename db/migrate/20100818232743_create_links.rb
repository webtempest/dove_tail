class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :title
      t.integer :page_id
      t.integer :position
      t.integer :parent

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
