class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :client_type
      t.string :client_name
      t.string :contact
      t.string :email
      t.boolean :report
      t.datetime :report_interval
      t.boolean :report_deactive
      t.text :comment

      t.timestamps
    end
  end
end
