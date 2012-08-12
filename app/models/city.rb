class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name
  validates :name, :state, presence: true
end
