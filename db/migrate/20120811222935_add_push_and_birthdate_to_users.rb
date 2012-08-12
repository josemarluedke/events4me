class AddPushAndBirthdateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :push, :boolean, :default => true
    add_column :users, :birthdate, :date
  end
end
