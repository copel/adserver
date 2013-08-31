class Publishers < ActiveRecord::Migration
  def self.down
    rename_column :Publishers, :publisher_id, :id
  end
end
