class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.integer :publisher_id
      t.string :name
      t.integer :category
      t.integer :zone_type
      t.integer :width
      t.integer :height
      t.integer :position
      t.integer :floorprice
      t.string :block_domain

      t.timestamps
    end
  end
end
