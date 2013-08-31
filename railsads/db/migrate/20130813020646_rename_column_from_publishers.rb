class RenameColumnFromPublishers < ActiveRecord::Migration
  def change
         rename_column :publishers, :id, :publisher_id
  end
end
