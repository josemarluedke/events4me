class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :udid
      t.references :user
      t.string :push_token
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
