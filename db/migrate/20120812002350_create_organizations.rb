class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :cnpj
      t.string :logo
      t.references :place

      t.timestamps
    end
    add_index :organizations, :place_id
  end
end
