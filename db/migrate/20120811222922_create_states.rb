class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, null: false
      t.string :uf  , null: false

      t.timestamps
    end
  end
end
