class RemoveIndexPathologists < ActiveRecord::Migration
  def change
  	remove_index :pathologists, :email
  	add_index :pathologists, :email, :unique => false
  end
end
