class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name    , null: false
      t.string :address , null: false
      t.integer :number , null: false
      t.string :complement
      t.string :district, null: false
      t.string :phone
      t.references :city

      t.timestamps
    end
    add_index :places, :city_id
  end
end
