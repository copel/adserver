class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :publisher_name
      t.string :website
      t.string :email
      t.string :contact
      t.integer :publisher_type

      t.timestamps
    end
  end
end
