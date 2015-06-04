class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :posts, :time, :date, :created_on
  end
end
