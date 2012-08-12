class CreateFeaturedEvents < ActiveRecord::Migration
  def change
    create_table :featured_events do |t|
      t.datetime :initial_date
      t.datetime :end_date
      t.integer :priority
      t.references :event

      t.timestamps
    end
    add_index :featured_events, :event_id
  end
end
