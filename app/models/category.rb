class Category < ActiveRecord::Base
  attr_accessible :name, :event_ids
  has_and_belongs_to_many :events
end
