class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :candidate_id, :uuid
    add_column :users, :organization_id, :uuid

    add_index :users, :candidate_id
    add_index :users, :organization_id
  end
end
