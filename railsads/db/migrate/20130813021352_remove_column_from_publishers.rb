class RemoveColumnFromPublishers < ActiveRecord::Migration
  def change
    remove_column :publishers, :publisher_id, :integer
  end
end
