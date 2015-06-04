class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.boolean :current
      t.datetime :created_on
      t.date :date
      t.time :time
      
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end