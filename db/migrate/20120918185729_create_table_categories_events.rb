class CreateTableCategoriesEvents < ActiveRecord::Migration
  def change
    create_table :categories_events, :id => false do |t|
      t.references :category
      t.references :event
    end
  end
end
