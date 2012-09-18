class CreateTableEventsUsers < ActiveRecord::Migration
   def change
    create_table :events_users, :id => false do |t|
      t.references :user
      t.references :event
    end
  end
end
