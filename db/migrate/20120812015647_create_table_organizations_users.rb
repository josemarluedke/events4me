class CreateTableOrganizationsUsers < ActiveRecord::Migration
  def change
    create_table :organizations_users, :id => false do |t|
      t.references :user
      t.references :organization
      t.boolean :admin

      t.timestamps
    end
  end
end
