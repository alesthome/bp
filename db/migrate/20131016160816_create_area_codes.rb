class CreateAreaCodes < ActiveRecord::Migration
  def change
    create_table :area_codes do |t|
      t.integer :code
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :city
      t.string :state
      t.integer :population

      t.timestamps
    end
    add_index :area_codes, :code, :unique => true
  end
end
