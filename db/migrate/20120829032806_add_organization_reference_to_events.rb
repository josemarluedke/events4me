class AddOrganizationReferenceToEvents < ActiveRecord::Migration
  def change
    add_column :events, :organization_id, :integer
    add_index :events, :organization_id
  end
end
