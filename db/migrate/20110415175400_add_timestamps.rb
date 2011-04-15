class AddTimestamps < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.timestamps
    end
  end

  def self.down
    t.remove_column :posts, :created_at
    t.remove_column :posts, :updated_at
  end
end
