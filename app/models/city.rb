class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name, :state_id
  validates :name, :state, presence: true
end
