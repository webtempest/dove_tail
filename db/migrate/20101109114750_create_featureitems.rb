class CreateFeatureitems < ActiveRecord::Migration
  def self.up
    create_table :featureitems do |t|
      t.string :title
      t.text :body
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :featureitems
  end
end
