class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :datetime
      t.string :price
      t.references :event

      t.timestamps
    end
    add_index :sessions, :event_id
  end
end
