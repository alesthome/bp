class CreatePathologists < ActiveRecord::Migration
  def change
    create_table :pathologists do |t|
      t.string :name
      t.references :area_code, index: true
      t.string :phone
      t.integer :ddd
      t.string :email
      t.string :ramal

      t.timestamps
    end
    add_index :pathologists, :email, :unique => true

  end
end
