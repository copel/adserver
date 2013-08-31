class Clients < ActiveRecord::Migration
  def self.down
    rename_column :clients, :client_id, :id
  end
end
