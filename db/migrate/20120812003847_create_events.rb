class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :min_age
      t.string :image
      t.time :duration
      t.boolean :visible
      t.references :place

      t.timestamps
    end
    add_index :events, :place_id
  end
end
